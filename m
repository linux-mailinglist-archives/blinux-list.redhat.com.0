Return-Path: <blinux-list+bncBCV3N6GOXMCRBHVKSLBQMGQEOAEEOQI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF00AF0852
	for <lists+blinux-list@lfdr.de>; Wed,  2 Jul 2025 04:10:40 +0200 (CEST)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d38fe2eff2sf970775585a.2
        for <lists+blinux-list@lfdr.de>; Tue, 01 Jul 2025 19:10:40 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1751422239; cv=pass;
        d=google.com; s=arc-20240605;
        b=VLM5pLe4C6TdsnLfFWtww84nvNKZrH0bpW8GmSFuBSntllH9R0lRaFDP6ZRIwsHiVr
         9B7XdtnNKdPAaIyCRxb2iqFWS1xwWxxTqt+okZXoZtcugpGeQghtdEo9bYzHq6wMhNGn
         XYk6852/0OwUdkxPauyGiVpUwJn0/yY4cD4ohY3XW3Gt6q/oLnafL0Jz8IaozgKnrdD6
         o31kgjJ30TCu3oP9wwP3e2o1B3QYF/8uhYTcaxBGMvJHWi9NxVA+IEdfEfumdPjGQO/L
         0qI1PkesURwFGBRLnBRByanZR2cskYA+nCekb2QO/ALQFraSzM8zLtKHQbwpAEOYKbVz
         IKXQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=TnmQXGr3d9xCtEbjbt9rf89pRopLMNEVAiCxAZPeIzQ=;
        fh=QDS9Fe5JqCbTlHv/qNjRb9dY2R7wBXPNOTrKdTkDcQU=;
        b=ALadoEB8CwF4a2qIDa9V4Bmow5Me3iYTMNYDAIoFcJVtwDYg7UuHNAuWZ7xwmvLDKA
         HICi47okcsTaclJ/E8C2vOjW6BQ47lx6LhF3prLQv21NH+k4mn+TE2i2IQzNc9OgczVQ
         70aRXTxZBUmIFjBkgyJdFVIfUwE3W2zjLJsP8I0Dpx8131bNDcAp1GVfBP+N3vj+rV1O
         Q6D6Et1ouhWjePTeQOOBoQGJfMhd2v8Pi6exHYIj+A9XsnGV2RQIVfl8kMkzhOqQZBP3
         A3QIngIqdBO6G/oBxwylqv1cbH3b3GGx7i5/Gz+eYhz0WWJep9Rx98nD3Xuyqij4Ax/e
         fc6A==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@gmx.it header.s=s31663417 header.b=jRuh19V+;
       arc=pass (i=1 spf=pass spfdomain=gmx.it dkim=pass dkdomain=gmx.it dmarc=pass fromdomain=gmx.it);
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.21 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751422239; x=1752027039;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TnmQXGr3d9xCtEbjbt9rf89pRopLMNEVAiCxAZPeIzQ=;
        b=mqcdNJXPLiGTPFdI15O4q3HIRnLLZx7pBUacjCa6TeNbihqgC3AFBzKA8DlTYC2PQ8
         /8BHnoCOTO2TK6Er+0VEZKwEipTdZwjTmPlzAHsxs8366o8VJom1daJE7/ei12EyUaqE
         JhuLuW4yDWP/8XFw69dsXNw8v0lg239epGwxqR/k14ADNcxUSGsfRGdkT3V0wu/orPFf
         1IQJbvYXgWj8/tQ6Zt0MNyErDU9CkxHFD/q4qkRmEZWtC908rkdOeLgaBrSuFd5oESDs
         JQjDbZ2RXLIHf5OGH23Wie5j/e/fHyGnmQ11sTMf6D+LOu7zdZqwFmZDtKxLgGA9BcRD
         UfcQ==
X-Forwarded-Encrypted: i=3; AJvYcCVdutJ++wjXVErkytjsOKdnQ8bsOuTeqAOyuKE6+YQUyVnoVYNRATVkhVgdrwajcUa+UuWu/w==@lfdr.de
X-Gm-Message-State: AOJu0YzCBWOCRsp8oHGM5w27lpb1LLGmlRUltryk0d1jYVXeP2mey1ec
	UOJoDg4ASOkwSCXYFpKJNkbztE217Hs2wLFZ0i6Djwilcu2kocfpzM53c2U2sQnOfwc=
X-Google-Smtp-Source: AGHT+IG++uHKzEVNhlc/qhyqr47U0kpa9uWC4WmWfkRWI5giHCK1BSy/8Z3dDsg4Ch+U1MLU8y24Aw==
X-Received: by 2002:a05:620a:178f:b0:7d2:15f:f976 with SMTP id af79cd13be357-7d5c473590emr169337285a.52.1751422238796;
        Tue, 01 Jul 2025 19:10:38 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZcnse8K7ZNrBwoNpCORPCIgYvYC49UgSP6VKJEk3btpIA==
Received: by 2002:a05:622a:59ca:b0:4a5:a87e:51c1 with SMTP id
 d75a77b69052e-4a82f15a0a7ls25972191cf.1.-pod-prod-03-us; Tue, 01 Jul 2025
 19:10:37 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVR66qISy72V9GGi08AjJl92Ybu9vcDX8icHsNy0ReFnbXh92JdhQ+5Hz3eQUxiIe+DXwN+Wp5vdKgB5g==@gapps.redhat.com
X-Received: by 2002:a05:622a:46c6:b0:4a7:6839:d095 with SMTP id d75a77b69052e-4a97721ff2fmr14081221cf.3.1751422237698;
        Tue, 01 Jul 2025 19:10:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751422237; cv=pass;
        d=google.com; s=arc-20240605;
        b=g2ife6yAVw7BwStZVpDPNAHZMiwLr4+11f7mNhhokyAnDkmk8s0Ncnqip1bU+H+hgp
         KA3sJjYxwZ7nhKYji9iCm0cSAjnDb+Mjck/Ec0iPT/4My2oBLhvnDd57+8PBnkJ6oPWE
         BQiB26j2Aw9qP7R+I2wCsMR8Xzt/ZjvdeMxdCIvRTryAhxlQB9ibs5khXjitiaPxrrvX
         o0jOK5gHGnJPL4DGn/QKSv/iltbAJjuduig1JkyksvEbMcflQ5ZktFTpUJRwU0AAh4Js
         iWGUk2U6ot2tNNzeDSf9Wtgsa5aUa1NquH2JFbCaYIGHyb1mXnH+a+B6ne/lzgbLkaRu
         +P6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature:delivered-to;
        bh=+HR+IwKkLvOsL71IaZLGdYyfG56zFssufaPABGFp1xQ=;
        fh=e2WkPm7zvS8I1715rBVZO2tJtzyPRmLixC1Gk6KdXuk=;
        b=Ua/NE8WWnFVx+OhDzKkMUI8hNeMP+Rsg+6GImzVnHOX8J0S48BpbyCn2VfuVDousmI
         fy86yYCqxxXvPgokfrITPjrERhBi6bb5HnoMbrLFP/1V7yJQku5fAPS8pkGUzUA84xHK
         MAZ7H5INl52xwdBXav5Tb1uMb9/3eWdtdfaJ4yD+cQGw/XkAYw5u7KnWsEzgt7j4DMc6
         Y1W+glNAAjadTz55jO20a/O1UJnj+gJrRq7y+7VUZsCC5cJQOLalWTyKneQAZf0quDdB
         iKgY5Sz3VYyKigEYV9ixZCmUwaq3aTUDQO1+S/eTJskvOOvqmncJNsWjTeAnIkdHB8V7
         zSCA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@gmx.it header.s=s31663417 header.b=jRuh19V+;
       arc=pass (i=1 spf=pass spfdomain=gmx.it dkim=pass dkdomain=gmx.it dmarc=pass fromdomain=gmx.it);
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.21 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4a7fc5568f7si118059451cf.522.2025.07.01.19.10.37
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 19:10:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.17.21 as permitted sender) client-ip=212.227.17.21;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-77-bfdi3GhKMKS86jekT7037A-1; Tue,
 01 Jul 2025 22:10:36 -0400
X-MC-Unique: bfdi3GhKMKS86jekT7037A-1
X-Mimecast-MFC-AGG-ID: bfdi3GhKMKS86jekT7037A_1751422235
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 54FCB1800343
	for <blinux-list@gapps.redhat.com>; Wed,  2 Jul 2025 02:10:35 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 5020930001B9; Wed,  2 Jul 2025 02:10:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4D24830001B1
	for <blinux-list@redhat.com>; Wed,  2 Jul 2025 02:10:35 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C110C1944AA9
	for <blinux-list@redhat.com>; Wed,  2 Jul 2025 02:10:34 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1751422234;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=+HR+IwKkLvOsL71IaZLGdYyfG56zFssufaPABGFp1xQ=;
	b=Tz0pSwrNDtMalHk5CNx9n7VfhF3rzVWDyi2ucxAeswUtLxXBSIhU2O75rhbz0edxft7546
	IV80zFzzVdl0FOlaM0enUrVAwxQ/L6lUlqN66xSVeL2BDX48zwGlwfsE3HHZjGb+0utkGF
	K2RuHo3SzvFZ6M6OeY8u/SMUCEelFb8SLehyxCVaXuYTV+WkQh+/r00UZT6GXFS60+ybIZ
	f+PJL8upxmLhi15iaUcnMbk5e8z7YARZR8+ROdAVMRaRzZonLEEgJVtcKDmm8+wiLSq1BB
	sT9cwBKldBcYlZgcal8HDiGFmLueotUorDFdJ7WAkJchE1WYWsGRmOzdj3mJ/A==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1751422234; a=rsa-sha256;
	cv=none;
	b=NyO0ZgkOTuZp1WZa4NCYe6LrXK26t7HkznzsOlinSXJ0R4Qk3yIP1kbpgM4bLmLXWXo/x/
	uSTUm7CkZa6xVDqI6IyYjeSfnAFXbqW4x9dN84MWBTuy6heLpeuZc/hC/0LcHcDAZloQB+
	lFmuxyMIyA/QlhuiQ4xYOwruvodoPXnHKUhuN9S0CD2zpjCMMNvmSKrlMEJiR5RRmSaO8o
	Aa55ngCSdhikOearMRi7kSt6ziPUvS3m8qgMyBVWmosuqjrPeMs7lZ70H6+PdHV7vzOatB
	UMAKfHmZBn7J1LHHR8JL/PU9Cd3rqqNYVb9hWhPK8WbfF4z1cRw8wWqBTHKsbw==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmx.it header.s=s31663417 header.b=jRuh19V+;
	dmarc=pass (policy=quarantine) header.from=gmx.it;
	spf=pass (relay.mimecast.com: domain of kyle@gmx.it designates 212.227.17.21 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-205-lvw_wXpDOxyzoMT2QVFWRA-1; Tue,
 01 Jul 2025 22:10:32 -0400
X-MC-Unique: lvw_wXpDOxyzoMT2QVFWRA-1
X-Mimecast-MFC-AGG-ID: lvw_wXpDOxyzoMT2QVFWRA_1751422231
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.236] ([136.47.142.229]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MBlxM-1uP7xy2d6i-002L7W; Wed, 02
 Jul 2025 04:10:31 +0200
Message-ID: <ed3c3c5f-71d1-412d-92e0-f2a0251fc019@gmx.it>
Date: Tue, 1 Jul 2025 22:10:28 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Seeking Guidance on Switching to Linux for Personal Use
To: AbdullahZubair@BlindHelp.net,
 Linux for blind general discussion <blinux-list@redhat.com>
References: <04ad9922-c266-43ab-9474-9c896ca850cf@BlindHelp.net>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <04ad9922-c266-43ab-9474-9c896ca850cf@BlindHelp.net>
X-Provags-ID: V03:K1:KKkPGi4CGGW/gmthILkPDmRxZsspUvMk4zXkqz8oAtHcH8IogX+
 hc07Q3k1zra52YltSvJdFWydxCvlrFoFdNXk3j+xrvhPTMLBR3PAUY5MG6qj+gs+oXbjY6F
 K2jEqUGoE6IeObBGBuefgb5YNVd8/bVniwnA3N9R+jXUngftP6SUM0ejFzq6fJXmx9xVt+t
 iLC57FFSKsjMvos8yubdw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:0jfbtWz4/b0=;5UXa26T5W+bqdS8aIKPxZHUBUnn
 e7RvyYHSPQ/2L+nwQ6/ya8cZ8bRhaOIX3qmD/T3OWJlm17tVsZn1PF19yz+fOlU7Knzmipi4B
 dU8nPf+QojB7v1kUyPEwVptvG6fR0UCzjPZcFtPmKghSxjwqUoLuWbVgggHQ5ppfhHVpEx914
 OXDz3W8wCoCidqifQvHn0h4pp/eJO/yslGduual8hQPHso3g3KuVpBlDhyruD4mncjo9q8z35
 McYywpOWJme8YKb0XGKqpPbxr0Jw48IDk49s2ubJoSiOALggJ3zlfA2YGhzewWKRFxe24WVMh
 46ibZvitaOiH8Z2Hemu1rgFGmJRu8YgJmkbUOLFYjxV7DnYRyEJvrFj3sgoQ8OR0WQF7RG3NH
 NcB2yFGhjeP6LJnxwgJcsqQUg4vvJr4O77Oo1z4VEtBYhPi51089bFsOjY+NMad/ycHlXK/wk
 BCHkErcrohmBVj4K306s4dlmezXT6ZgISR1FWM7ttjNqjkeIRyJzywgBIhaLFJxbmmHJUfpmy
 DcmK0Vc0CxgjPX6j/vvT4FTkvmEv9fx2xe7N3HDI1Pk2hCqsVOWtcjDRLp9YiU0GKDKBaSGND
 x9h6bzZcMWeU2rV0B3ekoCUONxwIBVE87fcaqRRtFKFInr4RTdBfmIgGsJrgWfx92wEdi7FM8
 yEke/4UOU7xt3xkQVPjmLctjXVbGIig6fRDUnikpiFSAq8gNaltIzl1dwPkLNb0UBhtPTOomE
 NGBM3agdfa6OFOWQEUcaJAsw6wqLuPz17Tq8XPcBdp3GnWQFrIQcSWXyw8SDnSH+OcpkF1lAY
 dXzOYuI5KKBwdn9ssOiZo+1/bHQ+6dlfAsBTfXJKTxUTQtmNz9L4FczIWs/j2VZexhyR1B1B5
 xvMD2MO0rPcQUYcLE1mbeEmBERw7oE10ZQKCmGx9RpzftpuoHd//WdRtzFRZS93uxjsm4yset
 5O6ZWOcSN5vPduz7yLLm8A3V0PwftJQjPm2iJxz9FVbKYOdRM1IyRXQWY6dX775EemDQ7cvg+
 6Ws5DaxUkNOx2ZQDpR0g8wBR8LbUKJE7pWrPUqieqRJNsXzjQYlu5VRxk3A20JqCmvDaVTqbU
 5DVEDjOxAeVtMHIksnF/1SvY2ABx2MNZ9Ms0p6L7WmF0uRRxp1u/DOaB+8vupD3wEkAia0JPI
 b86VDFCJ3Ho0Ox+xHm+eKOp9kwN0jtIW2IRx4Db9Fsopppi3cgjrU9ktQPq9gNf1p3+gPu5m+
 zqQdcNCKkdL7qYvnpcDUlQWBxzvhB7OmL60jf1wD4iIKEnGHgHfUVgdmkTHfBltHqI2Ky3/Ad
 OkBENT9FEqn9gYPrXlo8BfLQTlIdsWMapUVRt/kHT9vDax5333F33B0/ZfVEsi+06G+D3Yuft
 b9yZ6rUwF6sTac31E/jKmL/TS1amAvowHs8JWeJXv6jXxlvV+tbSvV20vyW21Ej6aGI/pGS1t
 a5cLqfAkD3eedVwObi5c4kbUI+3F/xTMddNKitQ0848r0gaZnMFllGvGHbUB2o/TvbTss+am8
 qNpbn+H448mvHyG3FXZY42fmK3elHf5WBsLgz7gVOn4KtJ1DBFogvqc6iQnt48yCTnTaGpXe7
 nM/YODr57/TVxrtkba3ufYFub4cMW0wUxprGJ4IdtjZLSA6xxOjgGCPSTemV1gq128eVqWGOy
 +DHseE2/3YZ1FLA6hgRF8ME0Vjjmra5jkDsuapniGgdbD9sqp790IC+nKq/hrU5Wlbi5E9ROc
 kVi72RsyzVrRiCVllzY2O0OM+zCtX+rFaPoUKdoEjolWFewl8aqhRlSLBSZUMqoNsskziFQln
 yvH5C0c+XlYxKD1yKiW7KKjUrDkcIz2qQaZc2JPnVxVDLzl9rGQIEvSg1SSDq0/QJLlzeCD3F
 BHT/llmHQqP+y2cEiM4qjQ7plAYkB8fVYxcQ5u0PUtJGXbPuSDtSUA59MQceM+8VkWeIR29n8
 iAB10QuobVFiGW3qV/LMpCKmt9Q17LIPw6nm2YJ4IQbqxMqjKKl8Kc9y9m+rWij/S1cFF4BK4
 VeaTJbPq7b2L2qqbh+QFJ4JspL/0i62l789yQViG8A/0ZeVofin83ZVLHrOmKfAZTpltxO4VV
 E5/Sk72gwFsfN3UMRQn2DwSbekLHkD1DPMGC6Vtx8+WiDyfcoOnLkUvzl0zI1pmMd3w6o3K2s
 jj0bNrGPgqlN6H9WTXxurjFEEfMgnAkG4/+MMbW/ivy1vAlVqeQs/N5xKArcGUd0yV68eMN0s
 9mB7Sy0gmgVwEmg2yhtYH8PKMoNqE1VzkBaqWStx/UGzWbgdyT2K7HYRjAcgVhJBHfkEAqSbU
 HgsSohWuNbtxXKwX1WJDNVCPeziteYqRT42kEFlQBZzA1ETl2ykMYrruSOGzIp3zysOD8FhvS
 ddDWtv03zaJ3C45AHt72ygs11gUlQyEiZpoS8L+LgdEQimjzdzf1Q6Q0kyD+3kO333sY0sTtn
 nuKJZBxBUT3JwK6iGll2zNhJ7M1BZi27x+xGt/e8wRpM3x34JfPdpJ3HTInkg7YrIUDRt9/vz
 HkRbsQ4v+vJlyctj2yqRKNWj/geV5VMre9sBHh0S3a7tk+08YO+HLMM0SBYRK1WNbq+IvbktY
 xvCZ67PpzZGgKIe7gm+2Bmb+RCz8ifL1mqgT77GdU/O7v1w5Ln3v734u7okf1gmcELLiVn9bU
 vOrlyvtc5D0AA/ylI6WkjS+6QpgWCaRvQCfTt++Hj9KAYFk6sVRreBIEq7mMAGTMFJTM0G2fb
 44KYPpGS9EmOfUZU7mrfmkPUwLIkN1oofT//+0p6BkjDkg/+lMaVPg3zk+o7L2HqBHaa6BAbn
 XDD7eDnS6Q1lSXOAiVYdDUzmxSEdNnPCmVcPB0NZ4YSbXQ2Kn3/UPVIdy/RIbMYdSGJ7ffGL2
 TWdpuBlXF2axPKJLdqQNrs3nUOQiFOcNawo67wxEZgPZ62Si7uzEcGm4ucQ0mFuhk49x53dQw
 YLrNJutKiv2J7p4zVRUtFF50QFuEAE8PMMWZFacFz5y+AfYWN1rKfiOkDRKk17J9GQynV5CDI
 3rlyz2SpyngVN2eGOK7+LtQ8vSFKxjTdQC6QXoLMrIqxcjYFLzBcQ7Xtb3pl9JaRSRP6bhzO5
 eLGfjrzXqvo/+k5cw98Zsisga0xqYXv/PxlEA/Rp3aUBdcKN3VU9QU/rex7WCp16cUveTLaBC
 8akV17O0cKjRvYj9dm8WWF98fLXg5Z4YLuZL10KLnuy/XY0Ru5W43vbFhBe+S8VpOzZ0XHGCb
 iT7zSX/If+9mJbXZghTMSTiN1OFa5wf4ooK6jUy/y2lbwSSm+jXs+ARGgZIHfGCaV8Ciq2She
 PgmpMMrTTsza6V49lSycBix/Eof5ZblLtCeAGsCPQpE8pGSb+Cve2uUplk+nPsBuDUY7RIN
X-Mimecast-Spam-Score: -4
X-Mimecast-MFC-PROC-ID: 7-sSkXZ3WPp1jaWfn70AM0fRIGQx2-Xe1Po1orPBS68_1751422231
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       dkim=neutral (body
 hash did not verify) header.i=@gmx.it header.s=s31663417 header.b=jRuh19V+;
       arc=pass (i=1 spf=pass spfdomain=gmx.it dkim=pass dkdomain=gmx.it
 dmarc=pass fromdomain=gmx.it);       spf=pass (google.com: domain of
 kyle@gmx.it designates 212.227.17.21 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Original-From: Kyle <kyle@gmx.it>
Reply-To: Kyle <kyle@gmx.it>
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

I'm a Fedora MATE user here. Have been for several years, going from I 
believe 34 all the way to the current 42. That said, there is a problem 
with the installer on Fedora-MATE-Compiz 42, so you may have better luck 
with Fedora Workstation or Fedora-MATE-Compiz 41, from which you can 
update to 42 without any issues. I really like the MATE desktop 
environment, personal preference, but some prefer the GNOME desktop that 
is on the workstation installer. The thing I specifically like about 
Fedora Linux is the installer, because instead of having to listen to 
the whole menu and type in numbers, you just arrow and tab and enter 
what you like, similar to the way most graphical applications work, and 
for the most part, this installer works well with the Orca screen 
reader, except the 42 MATE installer that I mentioned.


One thing you will find on most Linux desktops is that things pretty 
much work as you expect them to work. For example, file management works 
the way you would expect; select the file or files you want, shifted 
arrows select files in the same row or column, control+arrows skip over 
files you don't want to select, control+space selects a file if you 
skipped over some to get to another, then you move the files with 
control+x to cut or control+c to copy, and then paste them where you 
want them. You can also delete multiple files without copying or moving 
them anywhere, just with the delete key, open with the enter key, etc. 
The good thing is that if you don't happen to like the layout or the 
information you get, you can change it, or even change the file manager 
if you want; its completely up to you. Of course reading email works as 
expected, you can get a list of messages in the folder you are in, 
reading the list with the arrow keys, or use the folder tree to go to a 
new folder or mailbox, press the enter key to open the message you want 
to read, then use either the arrow keys to read a message a line at a 
time or Orca's SayAll key, the plus sign on the keypad, to read the 
entire message at once.


There is a key difference however when looking at websites. Rather than 
reading static page source into the screen reader's memory, thereby 
losing much dynamic content, Orca actually presents the page using the 
browser's view. For you, this means that if something on the page 
changes, it won't get past Orca the same way it can get past non-Linux, 
especially Windows screen readers, and pages actually load noticeably 
faster as well. Still a bigger key difference comes with the amount of 
structural navigation available in the Orca screen reader. Just an 
example: h will take you to the next heading, shift+H takes you to the 
previous heading, and alt+shift+h gives you a list of all the headings 
on the page. This works the same for buttons, radio buttons, checkboxes, 
links, unvisited links, visited links, clickable elements and others I 
probably missed. Every key that navigates you to the next whatever, add 
the shift key to take you to the previous one, or add the alt and shift 
keys to give you a list of all the same type of element on the whole 
page. This small but useful feature set makes Orca stand out as onee of 
the most browser-friendly screen readers anywhere.


So most everything else pretty much works as you would expect, right 
down to first letter menu navigation, using the tab/shift+tab keys to 
change focus, using the arrow keys to navigate menus and other items, 
pressing the enter key to open something or activate a button, space 
also works for that, etc. It is largely a myth that Linux still has a 
very steep learning curve. Although a learning curve does in fact exist, 
Linux is far more graphical and user-friendly and much less terminal 
dependent than it was even 10 years ago. The hardest thing you will need 
to decide for yourself is which desktop you like the best, and which 
other components you like the best, want to replace with something more 
to your liking, etc.


I know I can get a bit long-winded at times, but I was trying to answer 
all your questions at once, so I'm hoping I was able to do that 
successfully for you. Do enjoy your journey in this new Linux desktop world.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

