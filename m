Return-Path: <blinux-list+bncBD6J3OOK2IIBB27V3G5AMGQELSHIHVA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D56C9E8AE9
	for <lists+blinux-list@lfdr.de>; Mon,  9 Dec 2024 06:06:53 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6d8b3173b5bsf66254856d6.3
        for <lists+blinux-list@lfdr.de>; Sun, 08 Dec 2024 21:06:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733720812; cv=pass;
        d=google.com; s=arc-20240605;
        b=ZhqAd1Sty4wfI5OfDMWR45AIPGydT5F3Gl7JPkKAFlCCVqzwJM8sHW0XLZ2GZxlpGH
         VLiorDi/4FYrcB/JmLLSnXZWvc/fuN5xRzbSMVloppLzuj8SVnkUnB8eaecfvTqJ7TOw
         yHhteBCGBd2irhSVO+EPeHVtvjjOLhCwKbPzZpF2bD5GhYbi36N2gQfoK4l0ZSGXRXGm
         gyIbKjgOSvEkYLuofPKiEZytr1XL45uxjtjw5foJLymCoEQaeFRZpFx/wnL+xssY5bLG
         QZ9p4suzMnyii45YiDVeU3Mqz6ZwsXfMNs9Uc6wMyRhAHKrzIrfLtd3i7x8fa0IGhBX4
         UzqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:ui-outboundreport:user-agent
         :references:in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=6ZwQZxlWGTerHenkEmxjgvL/wX+lVxteG0WAbF6kgNY=;
        fh=qjDgO5YFKiPeZPWz+PXZKQbY0w6qP3oRxCK4dB54p/E=;
        b=SKkd5bIx2RrvwDeBjGmxZTmxVJQPtDTagQd7YfMx4CUoZngJU0yqjExy2Q4lzbOcls
         qGduwXhyYzxp2kv4/ZW0TRUkeKHbVQuvcWW1nPYEKjeHiAho1bxAj1VvV04Fz2pI9rA7
         4KUI0S7RnBcUn7hqHsA0Txr/FPLhfejuVKISXg30c5Dfptf5GWCFRANH94JQbl9lmsEv
         2aNAylX3wT7q3cCVHf5fjKSXrnZWQiM38A171O/A3oAMNiMKQLbUonG0sbavkYhHHdar
         KwJGnyfXeGW97cnVz9Whoxcrl6WGVi3UqnrbPYNDBS7BB9+ysgHprNW5eB4R/1i6uu6e
         q8VA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.15 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733720812; x=1734325612;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:user-agent:references:in-reply-to:mime-version
         :date:subject:to:from:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6ZwQZxlWGTerHenkEmxjgvL/wX+lVxteG0WAbF6kgNY=;
        b=kPhPD2RF5Mr/78Vwa6y9untcPYiJSnsxYGiYiBwL5KlHZHvQX13+ThmuHgxA5Lwm2S
         q5aHbia4F2jUnqFDYUvUchelwtlrYpuCPbwwiIuqeCtChZrm+ebVSM4bxsAk4iBXVaHW
         4FJsR5NfPIqJyfLheC1gjc9UlIYYnvpQuPRlwLP4i8oPR8d8/7TD1jod769f4d9xPb77
         yQWijczsU+eUUyIJy2xJKF8yZBLXhKFHNrqSmqT9pEbc19jZxyYXX1ALcTOjUHA4JunK
         QWk5tPNbhHrLnx+SPmTnPX4iN7AsLeIpKptg55XhUAMhDzQhkrd+6YaSf4+fJAR3MeSq
         u0cg==
X-Forwarded-Encrypted: i=2; AJvYcCVGtPfiBHaq5hEKJVIXuwLMsATAEJsDuhKn+ALGbxcC0QcpH7EK6G/bw43SBDeuuorm443c5w==@lfdr.de
X-Gm-Message-State: AOJu0Yy2VWQILPlWdNjpJ+6tKwMJSErp4vJEilrCP5jEGhMQyEJUCA3N
	g0EHe/N9DvweC9/yXKtXGYvle6uPV9l8QMNeawBMxrsNNoHitAttAL2ehBwfToI=
X-Google-Smtp-Source: AGHT+IE/D54DRrUM+w7f6LeeEZbbIIpNcpa4c72ZhhZl6Y/tNha8iB4CbLADy0hipGV/c4l2Yn5L+Q==
X-Received: by 2002:a05:6214:500f:b0:6d8:9e64:c9d3 with SMTP id 6a1803df08f44-6d8e72046e6mr170146536d6.30.1733720812056;
        Sun, 08 Dec 2024 21:06:52 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:1c0b:b0:6d9:832:c74c with SMTP id
 6a1803df08f44-6d90832c86als17696566d6.1.-pod-prod-03-us; Sun, 08 Dec 2024
 21:06:51 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXA+kAD730qUENQRy1MpGIpaX6CdFZyLo78pSPMBCfvckM5kVrwFVJyAyFRqU0yfnI0g+seNFMM4OELrw==@gapps.redhat.com
X-Received: by 2002:a05:620a:19a8:b0:7b6:cd90:c0d4 with SMTP id af79cd13be357-7b6cd90c488mr697323385a.31.1733720811031;
        Sun, 08 Dec 2024 21:06:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733720811; cv=none;
        d=google.com; s=arc-20240605;
        b=j9mUwiCJhg2Kgk7edewR4DAQyqXyv+bKiyqBDpYO4P+VoPwEyQTLjUGjY6zai37lnm
         8c9WiZVIu3hZelPDc53YqWz3jK/Hu/18U/RA13nhbH1V23P1fqAFS2DDDkJ2zLzPGxl4
         QJw8QBbvII14z3oQuqC5VCcRzFAoFJy63AvTMOhfB7j01ZfhyTo7QHlDRM5W/ak/KFaD
         BbRsfCIbekDmnoAoaSNvaa7kvqRso6KuHHYZ4+zviQTrjKB5IeIgh31/22hFD0YUDpzd
         wF/o3Z6bptxa6Cwv5YttQjiQUUKIv7Smr/L/7L7eL2Vqu42GCXlHa8vBoWH9DmN426Gh
         mPzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:ui-outboundreport:user-agent:references
         :in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=25a/OSKdgp5VBTWND8E760+pgtn+Ekvq1OiI4yix5nw=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=RCninQeEvNkgAPhN5Ou/pfmMvsXcBUfX6CjUMz16S/E6dKiSDRY2NujVGPtkAk4J4s
         mkVbr7/cYzL9d9DjiahYhZCkqmVVFanCbXOwER8wLJQ9OJXQjrUgnluQqpYbjO4ugzBQ
         KibtwFRI44kddNHzgGJHB6/4FY2f4jk5NBR7Rp4iS2dGx04zuCUPq6u5PFxIDX6nmNU0
         Lz0ahbtNT5s55c9AWtO1QFE/gSvyHdnIPCu0l6yayYidfpXCPPvtElUgSDEhrUz81IyE
         6Yr9/+/g/ijnXO2y9BFTr38aAa6PedC/x1iGJ27MAq6yQhOfKO6W/pkL004o0SG91tB2
         v3fQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.15 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7b6d4629f71si216447485a.407.2024.12.08.21.06.50
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Dec 2024 21:06:50 -0800 (PST)
Received-SPF: pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.15 as permitted sender) client-ip=212.227.15.15;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-49-s4aMde1bPxeI6WddJPExFQ-1; Mon,
 09 Dec 2024 00:06:49 -0500
X-MC-Unique: s4aMde1bPxeI6WddJPExFQ-1
X-Mimecast-MFC-AGG-ID: s4aMde1bPxeI6WddJPExFQ
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CF02319560B6
	for <blinux-list@gapps.redhat.com>; Mon,  9 Dec 2024 05:06:48 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id C8BD019560AF; Mon,  9 Dec 2024 05:06:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C5E7B19560A2
	for <blinux-list@redhat.com>; Mon,  9 Dec 2024 05:06:48 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 60EA319560A3
	for <blinux-list@redhat.com>; Mon,  9 Dec 2024 05:06:48 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-214-1swbRV1aOguu9IPhPdAA5Q-1; Mon,
 09 Dec 2024 00:06:43 -0500
X-MC-Unique: 1swbRV1aOguu9IPhPdAA5Q-1
X-Mimecast-MFC-AGG-ID: 1swbRV1aOguu9IPhPdAA5Q
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [0.0.0.0] ([208.107.97.40]) by mail.gmx.net (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MbRfv-1twJhr1RsH-00pgXg for
 <blinux-list@redhat.com>; Mon, 09 Dec 2024 06:06:42 +0100
Message-ID: <20241209.050612.901.27@[0.0.0.0]>
From: "'Rob Hudson' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Subject: Re: My Sound-Cards Are out of Order Again
Date: Sun, 08 Dec 2024 23:06:12 -0600
MIME-Version: 1.0
In-Reply-To: <20ccc5fc-d10b-edab-7aa9-9ef3365491bc@hubert-humphrey.com>
References: <b5d047ff-5695-bbaa-d3c3-41ca7fd56396@hubert-humphrey.com>
	<20241209.040341.694.24@[0.0.0.0]>
	<41ed14fc-97e7-bfd8-b13e-ad14d429cc1a@hubert-humphrey.com>
	<20241209.043800.647.26@[0.0.0.0]>
	<20ccc5fc-d10b-edab-7aa9-9ef3365491bc@hubert-humphrey.com>
User-Agent: POP Peeper Pro (5.5.3.0)
X-Provags-ID: V03:K1:aE3l/aKYfIXXOszT5SwpChhtn+xoQHDJPDKfUHn36MoRrgqSB8F
 pRGxquMhPgZUqGxtBQA7MeHurJK57N2gd2hV/zbkPNawe4IIFr4m1q3dqh8oJnEr5cA31ya
 WNlWcL7Xm4srYe8MO6JWQAokixNs4/QQUVToAG30mHIBffAFnAbOUFTfHeQjQ9Z68d7aUrO
 DPF2DMeEXlgQCON0CoWdA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:pmxs9qRAOpw=;P9rKpDNOQrJ9JL3sYmx7zm1LMo1
 Ahmri8ege7qonibLbiODQbKudzRKoXKtTfoR/Xlb9H18ZKWUAKQdWI6W0Luulrang5hg6T5r4
 2I1dx+2PVAC47ZBKos8EtW/YLODNMQyJeTga3+ntIVX24B/hF36jZWcWfg28OL6jgz1H+p8as
 5ePmLn6JKJO+vTuX2gqYSvteUBJ8LmZ1fr/zox9fEcCX8GBkyDyk3KetaQRExsnYB8r+Jsc2n
 dgM4OFrZcyVnvic9QeRvPt1v39gPaWp3x/wJF3x5IDE2TaNG9dSehj7AmxW/C1/+3DJBUMaB8
 WgJ575yK+D+tONZvpE4M1JkIZ8qM/n3xcnbCWFSfIHwfeme9sJ7frqc5mLRuKzYwTHAYsGYT9
 pIDSXLong0PWZ7REf2vgzmbwerhUuLfoq0/t49cVBxQ4nCEaoYUJr+5GdBu7Bn9BpfORfBwzi
 3YHoDzxsrNPcagMgZSJR5FB1CVq5x/spdInD84w+iQz3RgYH1StKkWNwR6mU3kEopr20RJWhv
 YJLM9xDIZfoqSylTIMcnnN0mgQ86XcWL4QbqBbocL/LYeiq0ZlsvZaFDploeJLiJe3HATj+pC
 DXzjNArjvv3goCwm9Nvc3NPqmCeF07LSwvw6w6AjKY/Y9hQUfRU+hU0VEM5wK6ky8/osboQcM
 HbLav88T1teLTm8v9gVKWIJnpQ6coUVRBjiwmXophMEmSvcKx9khLRGxTYt70XCaPTihal+bH
 uVg8IFfntlrOFn45Fht/d1hsv6PNh+CzwmcJlazWAcvHF//TSa+p3YUyVl3TQLZByHbdgBtrj
 GfOcPvazqBtUC0xCKtm+9t4vF+YCdK9iYJ/GtDFROyHtgD7/86rTnc2HHkXRI0pR89heV5Xb1
 G2/y93Fm+bPLtPSHSJxefcfEw1xU4TUTU32u+f904a3eGCh1ub1HuJdJ8MkgzC0BobWvnkJxc
 zyg8TNwcThCgF/zgQDwIvr3ywpWoqxBbShPQNYzBPsMFZnSMKIFi/nA9gcjSL8AO+9h3Z7ITX
 /NdAcq0B97PadD+V9/xMRC2vjZv+9m6xmNlX09QlxbUYcx7gSmP5RcI8/b7/BsU8vliiewEM+
 G3F3C0DayZ89Bn2CaImscW48jbIYAS
X-Mimecast-MFC-PROC-ID: x-WCPacpqJslGZtzDeQ758WIY-okiJbklOR0tYOyxss_1733720803
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: eleVD7fLwB-0DGO180WWtn2lxoc43F5JROjm-XhXqu0_1733720808
X-Mimecast-Originator: gmx.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rob_hudson_3182@gmx.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rob_hudson_3182@gmx.com designates 212.227.15.15 as permitted
 sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Original-From: "Rob Hudson" <rob_hudson_3182@gmx.com>
Reply-To: "Rob Hudson" <rob_hudson_3182@gmx.com>
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

Not that I'm aware of. You can make similar aliases in /etc/asound.conf or ~/.asoundrc, but alsa's syntax confuses me lol. Someone with better alsa knowledge will have to chime in, here.

----- Original Message -----
From: Chime Hart <chime@hubert-humphrey.com>
To: Rob Hudson <rob_hudson_3182@gmx.com>
Cc: blinux-list@redhat.com
Date: Sun, 8 Dec 2024 20:56:31 -0800 (PST)
Subject: Re: My Sound-Cards Are out of Order Again

> Hi Rob: I don't have either of those config files, but I sent your suggestions
> on2my Linux expert. So is their no way of altering the defalt on the fly?
> Thanks in advance
> Chime
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

