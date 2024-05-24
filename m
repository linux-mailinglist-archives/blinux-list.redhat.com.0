Return-Path: <blinux-list+bncBDEPFPWCWMDRB6W4YOZAMGQE5MXR3BA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id A62208CEA6F
	for <lists+blinux-list@lfdr.de>; Fri, 24 May 2024 21:46:04 +0200 (CEST)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6ab8ec745e6sf4678036d6.2
        for <lists+blinux-list@lfdr.de>; Fri, 24 May 2024 12:46:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716579963; cv=pass;
        d=google.com; s=arc-20160816;
        b=Szuf2Ty38AJjhkT1aJAiW9c/+mYi+tpqE6mONO5qnPY+tqmeTuOM1KgguivHQpYWri
         EruldppYECze1qcGEj9V6/x4G2X1sFz8kvmtKaitVnaRzZCPmzpQCsdayRkzq77krr/S
         3Tp28V3wwiQMarpQsPvg1oARqw92zV+ytFPrtH2alBQsyafJyPaIjUaT4HJAZvoft4vN
         oFikPBNCnm9lvzb4zMgnSEY4HoIIIjLETIMEteQOz7bVGCWs86I63ADxMd0sHUKTzKMS
         CnJXdY16+QXnxqgXX4g5mCEta8BdE1GRddpJqEIKawOK62Nqc+zde+/uJ8DRngjwjyrX
         HaLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:subject:from:to:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=1e3wWnx/Mkz45vsT6/IvVhs9loKg0DzBsU5TA8FP/1M=;
        fh=hp0UVip6LhrcqsqpbXRi9dObGoHF7JZMR5yIb0BY2PU=;
        b=Aai4hp3AyP8zPupOs97yAKIBwUVGyyPXpzZ7V93rol/OQbjWZeyZB2T6syVVAdIK53
         qiBhJmBWpPCNMEYoKcn9FZNWP9qKiBUD6i490YfX8T0k5gWVUuyhpEwRF+rWMfB/tMw7
         wj5pLI5F3DgAkC59yqNjRZ4hAVVAVp2JYc4yZGir4yvaCWM0crLz3HhIV+nuDvTm5cEb
         9QD/AUiPCLAOxXSWJY6l/ckU6gMdfl/FefkRrBG3OuPTQmWMjSkb245eVz7aWI06SEIO
         Ntul2ggMafj1FNPQL017kF2/OFailm1f/io9a42uVFvELyk3gh+97GZ91lD8DVEQ8fsV
         HLCA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716579963; x=1717184763;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:subject:from:to:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1e3wWnx/Mkz45vsT6/IvVhs9loKg0DzBsU5TA8FP/1M=;
        b=AIH9XJbTKEG/uyCWSWAgx4OlFmaMvZP964W/Qkcw7m65lXF7JdrX55rvsPTsukJbKI
         GxNrFQdbi2kJL+LEdaCVh4tMcYg5gItZS/sSm5w4/x6m0EhBwWRK96COa01ICd+wGUtp
         e/wxLe8NM+DHh4rcVmMmJXSZOOmMmNT67OGsdlJhyahm0hEr8vhYXF5/KB7AkeWutC97
         PVmV3D81D6spnh9kVDkEpdQuSYzHW7fjV0ANP1zRcy5/c6Kv2MPHmxoiPYl3MyjIitZG
         uGnLp4X1+37vZiEQZToi+G7h9KiR+eOP9YEKl50cpQaFs0rmKEWkXs+tM+qOxc9EUX6s
         LtPA==
X-Forwarded-Encrypted: i=2; AJvYcCUqGFumslQOJ5VeIKAsNYieRRCkknR2xPkDYdNIPNb6BCYDQN+j+2+Gmz437byzUCDwbbkUIAwD8e0TcF8Wp84DX6dmjuHr5TM/
X-Gm-Message-State: AOJu0YzOZ7TMAI/87dn0514ZvgIAD2iQb+DDPf7lr69cZDljqK8o7EjQ
	rbGAiWt8NdNHnmOhEN8LUAhyoMKS3zd/SCBv/qgn6WOhq5qIYVVS7ULHyAeH8zI=
X-Google-Smtp-Source: AGHT+IFEL0Bx6QuZ1CzPst/gNkcRNXSUSB1XMjy7NPrXev7Nc3mK7C0aVjynTzNpa9dVRDrAMsb9PA==
X-Received: by 2002:a05:622a:1982:b0:43a:a840:69c with SMTP id d75a77b69052e-43fb0e73d41mr34530541cf.1.1716579962798;
        Fri, 24 May 2024 12:46:02 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5f82:0:b0:43a:cbe9:f171 with SMTP id d75a77b69052e-43fb1e736b5ls13414251cf.0.-pod-prod-02-us;
 Fri, 24 May 2024 12:46:01 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVVf9pxSDYiQCZd+udlypOyZw0Y+Uhd+xxd3wpFYcKhB0P5J9vIWv31J7Z7TFRtY90NigXiQhVP9du8Mu7BLydIstNRddLoT0PDBWLS
X-Received: by 2002:ac8:5d41:0:b0:436:8611:8575 with SMTP id d75a77b69052e-43fb0e74881mr34859311cf.18.1716579961645;
        Fri, 24 May 2024 12:46:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716579961; cv=none;
        d=google.com; s=arc-20160816;
        b=tigpXOT4RMU1CAKl1ROrqHbfP8dXMTkf5E70TPOVRC1wUhmv3tnrErh7JUwy83gC7C
         v1zp4Mm/WcsGeWUwfM93t6yEv5ZzN6at2bu5YKtGF8Ka0b+efx+/xbaCfxlrBeQg6oZc
         y84Q3rWcdBh7Am3QmtvGn2xuDzUOyh6IJ/IGibzBu/3ondFJhAk+te8nrlyDt4aj5mjp
         tgtWsr9lHWOdAYHfW6GDkIz31R6gPT7qtA5+7FIUP6t7A63vrBsA5WDqCRNxFQasssUk
         +z5baqwsfmdbuAwCBm6HYbGx0sIOhr/9v3JsYE5lmSG0TC6MLBzwwflKhgXqMMuKQPBp
         iqxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=gj6xc0VPfTSf2oSOuwTjrmYvNSW24izWX5YZ8nprDgg=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=eT2WROqT0QPbkOp2fKZKDTtXLMBTBABNZWwn9YmkVNguQf8kyo0hRCHZvEhclxMS9G
         I/qd++CR9yVUbSCbOH+IGK7RET4jrhPFd+e4jNyuHhZL4oYpILlPARnhLAwP3fGzugWn
         uN1NkCSUeRKazAo5Lg+kj/4PG42gt09Qlr19H2XwETFCJtQtxQpdJUSKhk1TFuZJ0ibI
         qSeNEa2MCha4nl2f4QG5a6vKlWyyliW/2fBKNIXuhLBor3tz4t9Ga7X8zcdCF9ZyhLZj
         1Pwb2w3JxqP9ZSWCt8DmrxaBn+KlfF7yR2qubp/t3VcJdGcJJLvpyOf/bXT03wygHjLh
         2u4w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-43fb18b60easi23286041cf.530.2024.05.24.12.46.01
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 May 2024 12:46:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) client-ip=77.75.78.210;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-94-ieqoxAMSMASYP4i9Ucq5OQ-1; Fri,
 24 May 2024 15:46:00 -0400
X-MC-Unique: ieqoxAMSMASYP4i9Ucq5OQ-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 179D01955F2F
	for <blinux-list@gapps.redhat.com>; Fri, 24 May 2024 19:45:59 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 08FF91943282; Fri, 24 May 2024 19:45:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 06A8F1944DCA
	for <blinux-list@redhat.com>; Fri, 24 May 2024 19:45:58 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5F3981956087
	for <blinux-list@redhat.com>; Fri, 24 May 2024 19:45:58 +0000 (UTC)
Received: from mxd.seznam.cz (mxd.seznam.cz [77.75.78.210]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-189-MTbbV7QBMYyzVoMETSvtFg-1; Fri, 24 May 2024 15:45:55 -0400
X-MC-Unique: MTbbV7QBMYyzVoMETSvtFg-1
Received: from email.seznam.cz
	by smtpc-mxd-d8c494cb8-snb6w
	(smtpc-mxd-d8c494cb8-snb6w [2a02:598:128:8a00::1000:a60])
	id 574831f142d062ab56a2c0ed;
	Fri, 24 May 2024 21:45:54 +0200 (CEST)
Received: from [IPV6:2a00:1028:83a4:109e:cf85:9c55:fcf4:bf4d]
	(dynamic-2a00-1028-83a4-109e-cf85-9c55-fcf4-bf4d.ipv6.o2.cz
	[2a00:1028:83a4:109e:cf85:9c55:fcf4:bf4d])
	by smtpd-relay-5d59cf9c74-bpljr (szn-email-smtpd/2.0.19) with ESMTPA
	id 1d949313-5ca1-405a-bf00-c1e4f944a105;
	Fri, 24 May 2024 21:43:35 +0200
Message-ID: <0dccc84a-2eff-434d-b089-d1eaca076655@seznam.cz>
Date: Fri, 24 May 2024 21:43:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Linux for blind general discussion <blinux-list@redhat.com>
From: =?UTF-8?Q?Vojtech_=C5=A1miro?= <vsmiro@seznam.cz>
Subject: RHVoice in Fedora 40
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: seznam.cz
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: vsmiro@seznam.cz
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
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

Good Evening,

my friend installed RHVoice in Fedora 40, but echo test don't work 
correctli, voice doesn't speak and RHVoice is invisible for Orca. Is 
some way to have RHVoice installed in Fedora 40?

Thanks.

best regards

Vojta.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

