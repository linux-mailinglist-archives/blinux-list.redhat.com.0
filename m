Return-Path: <blinux-list+bncBCV3N6GOXMCRBB452LAQMGQESITBD6I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF38AC429A
	for <lists+blinux-list@lfdr.de>; Mon, 26 May 2025 17:53:56 +0200 (CEST)
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-60bad055108sf1068688eaf.1
        for <lists+blinux-list@lfdr.de>; Mon, 26 May 2025 08:53:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1748274835; cv=pass;
        d=google.com; s=arc-20240605;
        b=MCJeHOhvTD1OkibWvD14dwImKeqKgU9eotFPFZLjwa6U1NLb4PL5r75mvI4ZHezV71
         ELHLm9QtGcMnvyJSG7uxNySBzt7e++pJgJl5Ays9AlcEGDGOVpnFNs8ppQLUgDgqYaoN
         5M4iu2vxiYCEgyB+7T3Q2NbyQFDWTBY0VCdwjEGvZsFqjOZ1dKC3efMdsbhzdsMy1qYw
         jLwUvJETRfSdfkJN0F2WmNbifhJjQg40wWagvsRNiXoCQzmwCQZ/hAnEFhlldMzdXaDl
         qyg+nMihTWQMLqKWtsBQctc4bxCf1ThjkqGk0Kv/pkvT5FcT5BbrDQoFhN7s5uFCgeFe
         WmSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=i1tmv+UVuciQ6ANH4qxXPKYfL0iCxxIg6J4VbsCPkQw=;
        fh=zm3YECTMwamfyflajlfGCsBSkBIp3SOCqgFayTmoqQ8=;
        b=XlBPI0OqEiLUj+2xP6NB7vk3FDQuG70209d4EfN4Ny/1LsK85s8xAEiwe5aX/2la3E
         +hwNkGNDzwng7//E34/rukZ/4uEpK02qR+U5zTQXLBe8k33c+PFk1G769elWyLGuQCX8
         lTFQ8ZIsjzslFgSSY9RFzhnNodIiasdDnhcF67cF8SON5cmGqIsP2d6DgesEymLM8y5f
         9GZ7vMRLX/3GVgTt5u6+hOJpNFWKKEistZ4HS57zc+7yEF+kWF5SLAlCAXdZGm2LvINn
         cOg+TkEEjZAtUcFQBHg8ovqiQJAHvBOlm83V+wJGtU6EKtd9wtljU4Uh433KuKsWmG7I
         J6tg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.15 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748274835; x=1748879635;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i1tmv+UVuciQ6ANH4qxXPKYfL0iCxxIg6J4VbsCPkQw=;
        b=piLFD2EQ3ONDb7f7+S73VBX76gds5HXtMrRtXHkJj9FIAT+pDehvatGqKcc2J52onb
         4QayXTuJx1VQIB4wh/mlm0Gx7pRGPZH9U8ItlCagXKf0uhuV+3JwuNjPajgKLQnRkxXV
         u4tV2N8MFiROi/r7AKtt15np2RQEDnJ1W2bxJeawlMAUNysohCHf7c+dHLOKNdjTuRN7
         vO0L+htdAFmbeBmlgNNJs/i3gHLUWH799AGkSXvKFCx+xvXfw9SvPYQQ3ZPzrmh1axef
         0frIos6+8BmwizG7t5ovYJGN/RW1VJmrRoKipeNzx76AHelSK+e5fcFCbGmoPaO1C1gL
         uvLg==
X-Forwarded-Encrypted: i=2; AJvYcCX/+qRYzAEZd3yayf4zoUcGMZWsbb7v91oEbGlinGHNFqh+nZbzRClN/S7BnsBUplo6FD+vHQ==@lfdr.de
X-Gm-Message-State: AOJu0YxAnRiDlwdgI+xYezbz4XhP2E4HJSYiSSDScxNea2chTU+JPibl
	L85dwpcRkYC0wceba3eHlBnXWbHkd9nqNx3x0iyH5TtPNZAD+vFcwN3gl0E7UwXkWME=
X-Google-Smtp-Source: AGHT+IF4JaQpsQmTXWfasUozRt/cLhjtWAuG9o2klcjMaV/63QkzHLfVLqjRyd8RquKXRYYp5vb3cQ==
X-Received: by 2002:a05:620a:28c9:b0:7c7:6667:ade5 with SMTP id af79cd13be357-7ceecb95e69mr1283503585a.27.1748274823940;
        Mon, 26 May 2025 08:53:43 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AVT/gBGejtUp3CFR24ajMQnjcHsbQYE4MiUKTcvbMoQxQ+mRhw==
Received: by 2002:a05:622a:4710:b0:494:77bf:54e4 with SMTP id
 d75a77b69052e-49f320b281fls10411941cf.1.-pod-prod-03-us; Mon, 26 May 2025
 08:53:43 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXVuQ7UtJsonxNUvMIrCT1JRejsFDUSKMfHp9lys3ML7EuieH/ah0uL377zB8QMUfmnliUizi8MeLvSOg==@gapps.redhat.com
X-Received: by 2002:a05:622a:1e89:b0:476:80ce:a61f with SMTP id d75a77b69052e-49f485acc0cmr153254861cf.39.1748274822840;
        Mon, 26 May 2025 08:53:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1748274822; cv=none;
        d=google.com; s=arc-20240605;
        b=YAj2tyrEs4hytdcgkQ5H1RHKT8g5oNfOQjF1EozZDYFhNiNud2Z0pJEbJyjSA/nPvQ
         UBkiEMN3IzJen70JX6u4k5ZHz948Of4o3IP7TMA1HcXfgdY6Hv4duTYZIPDportzdIzE
         fcOzpjHJwJYB3WYbXa/2oyV3ASfIUcGuM9WYUOKMKbVa3MuhAKNL57pHGJnVxhh0b68P
         0qTpryXgxBiSDcmPG/PqKApSFPb0pv3WVPflIvIe+dQjXipQV/Qo9pSc2dzoppdL/1V2
         fPmAYnCPAcYmYxQedc2u3tQKlhfjSNZGt+Hlv53tNi3LkviQjJ6vLgsBn/CtqvQrqqsK
         aI2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=wRA44GkzFPzw4ej6npcb0d079NvZAa0IRKzhUptWqRk=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=OFTBXIW4aQxrsvFXtlFAMxVZjf/uaJzJTdjsv8TI1NdfuzziQl4vDmdT5Nm4H5sCPS
         MV9V5RsDg0HeEPLpfXfYZpu3tjMlREmonU+cBLRpJ+pZxZC3OuY/GRn0An0ZsleioFVA
         wqoMEqbERue5vnNoNfoAjxE6q+xFWNEoHRRahkMR/6QXLBXp3JC5tOeKDx4Jx6N0V72d
         InYbN7MWWdHRRIrGiKWEjjR+XMjgS3gOGcurqg4wVKZS0da6GnJs+rxThYYK+wGI6O4e
         gnNEzyjjgAmzY47Okc6qEw4x/C+Z5vhkaGviVZAj379dFMJlTCCGR2o1oXAzvsAUp2EG
         BTrA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.15 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id af79cd13be357-7cd468b1c0esi2596509385a.397.2025.05.26.08.53.42
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 May 2025 08:53:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.15.15 as permitted sender) client-ip=212.227.15.15;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-630-ySjO5gqXNhW5BhEd9seJCA-1; Mon,
 26 May 2025 11:53:40 -0400
X-MC-Unique: ySjO5gqXNhW5BhEd9seJCA-1
X-Mimecast-MFC-AGG-ID: ySjO5gqXNhW5BhEd9seJCA_1748274819
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DB789195608E
	for <blinux-list@gapps.redhat.com>; Mon, 26 May 2025 15:53:38 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id D67501956096; Mon, 26 May 2025 15:53:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D3E1A195608D
	for <blinux-list@redhat.com>; Mon, 26 May 2025 15:53:38 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 56098195608E
	for <blinux-list@redhat.com>; Mon, 26 May 2025 15:53:38 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-70-5dJAlUuIN6eVmxhirZLyWw-1; Mon,
 26 May 2025 11:53:35 -0400
X-MC-Unique: 5dJAlUuIN6eVmxhirZLyWw-1
X-Mimecast-MFC-AGG-ID: 5dJAlUuIN6eVmxhirZLyWw_1748274814
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.160] ([136.47.142.229]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1N79uI-1uyFSl1hUK-0183Tp for
 <blinux-list@redhat.com>; Mon, 26 May 2025 17:48:31 +0200
Message-ID: <ddb1a30b-8b5b-40f5-b5b5-ea31f7cd9878@gmx.it>
Date: Mon, 26 May 2025 11:48:29 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: pi 400 jacks
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <43F65162-F8CB-4545-B208-D0A9AB9B22D8@gmail.com>
 <FF1D7606-22F5-4183-96EC-89450E31F492@gmail.com>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <FF1D7606-22F5-4183-96EC-89450E31F492@gmail.com>
X-Provags-ID: V03:K1:HxB0OvI3ODkukNG/FE/dpgC3fGv1o9kSeOnBwcpAgb+N6RSqANl
 NZ8RAhZb4CB9XdVYGYuywT6RWRqUPw+PPi2AY5fE7tOO+5amIppcdRxIHhI6rZ+79L003TS
 UnijRsPXANBZb4NRSduKIFnw/uJ8J2Ed0ot7s1712jW9HsPYhHEtFJvy5O5Egiz3R6kMuPM
 m3D1TBRNe51oYNGpWGyyQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:qGMogyr3p3Q=;gaiZRtdobDXcIhVnY7qIwd36S3t
 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
X-Mimecast-MFC-PROC-ID: mJJq2TQwW3AQaQcgOJc_GmVGgX-UBOJr8rsdwGuCv-Q_1748274814
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Kdsi3qi-w85FkijJ__HrATspOxeDfG5UOcZHHEp9WtA_1748274819
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.15.15 as permitted sender) smtp.mailfrom=kyle@gmx.it
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

I think you're only leaving out the large rubber cover that when removed 
exposes the GPIO pins. You have mentioned everything else.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

