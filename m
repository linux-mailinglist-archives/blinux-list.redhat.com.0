Return-Path: <blinux-list+bncBD6J3OOK2IIBBEO6YW3QMGQEN52C2WA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E7D97EC61
	for <lists+blinux-list@lfdr.de>; Mon, 23 Sep 2024 15:37:23 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6c528f34ca1sf101502926d6.2
        for <lists+blinux-list@lfdr.de>; Mon, 23 Sep 2024 06:37:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1727098642; cv=pass;
        d=google.com; s=arc-20240605;
        b=OD/f6LYmEgW5byN3QpWfMn4Uw6rLVEBjXuuRt1yZCMZPcaIX6jrudnnHuextpGbUUO
         +E/D/RuKBlfQRt3zCaYzSaifTgEtLhnIi7mHwYrm8cwD2K+AuaNPnQa0NFd88+ruuvMQ
         8yxjSNRJkIG+cZNGBGLirAJHFD7tSvH7k2260KJKCLJrnYxHoXJdI1LXB3VrLgnxP78x
         Zr6k84jxJpla22Q+GJsVy4v9s+nvDWdU7ABm878brHHbx9PwL2EOcntmFRj1LtiBIz3T
         4HNvr7ArUi1Q658+2D+IEFDKmtTXxvHlYPqbUibwz6DLPl3fn8k32JcbM0zPqRE22SRj
         n5yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:ui-outboundreport:user-agent
         :mime-version:date:subject:to:from:message-id:delivered-to;
        bh=ZjLpeSn5lXIIdqSlKR4Pzn90udGbPVu/Dt+A2DoKs8k=;
        fh=+ZzYQYY2drYNwLfwoAi/b9SwJDCDfvfWhNc8HyQfp10=;
        b=Jlgau5QhetNu2o1BJ1q327Vl0+bpgb7UWkglfWZ++5Hy+OpGZUXMPfo2AIljQtWyxO
         VUfP1KY4SMEshbI5Cnvmn08A2UjWTPnWxmrA5jtMGAJjm6PsUycnpIIaIKB0j2FUWS7F
         rDyByJLfzLx9D2EqfT4N7hVTA3KXCcP+PuvHFQYw6loEXYfjHIkhTZhu6TLNVHbgKSRf
         /GFJN87N+g6yQHZjGljqap1dtzGihfvPQny8YRF5DbQ13ATD8ic9B0PpJjJsQCRJ6fs1
         O/7UpFFnNtKHRz0LBOG3PfAccvF8R625faNYpZ8rF8I5qX96XsoI2Uphk776k2sov3uH
         J9Nw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.22 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727098642; x=1727703442;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:user-agent:mime-version:date:subject:to:from
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZjLpeSn5lXIIdqSlKR4Pzn90udGbPVu/Dt+A2DoKs8k=;
        b=b6spKvYzEjuZoPdXyAw25VDMC9Uqzp0ZdgNvXeWZJQ3h43IB1yOULMbAHSxHxCxgJ8
         kkyU3jvKEhnpBd1djA8565YON58N3vkwNOwy6NBhUCby0R2WNl0o5xbFDF9qnmLeNAxK
         dGfd8+yKUFuqXbY1jEHQJZyP5ZY5xrnfCi+sZtnnBgQEWhjTMSWdJzwlkcS58+v3rWRz
         ms6Dr4r2dSnJnJSBW5aizyy3sM1ol03QvSlkaXxOGb2dmXMGjtaeg+/n1qZeSLre4nPp
         ewevPdjZrIdyKwkiibGuuvBs1982rm1sX+RNZCjsHG5tSwDfur/q6elREDYq2ox3pjk3
         Ix0Q==
X-Forwarded-Encrypted: i=2; AJvYcCVWJs9dY61zarSoE5QIFkiYQ/6uaI4SzMqEFfcrg8NC4QtXmpzWnX6miQs0IvmfxJV8OJUnLQ==@lfdr.de
X-Gm-Message-State: AOJu0Ywx1zT91wGpz26ThA7w4ZXVYtzdAEocCNfSRrZDW5f/29qYaeHb
	cUcg7jA/4aJnTOdHZUU1fn8KnC/NmZxKXM55277JkTwAa3BFTjzIaUn2jHhnng0=
X-Google-Smtp-Source: AGHT+IFgGk/BwFIv+zn0ygJi/gAjDGjdNW5Qo2q9rwH0QKJuCFOmEwB07wYtJ4hoMBPCTRKDFDmHQA==
X-Received: by 2002:a05:6214:5f07:b0:6c3:3e3c:fd54 with SMTP id 6a1803df08f44-6c7bc8376d3mr156975696d6.53.1727098641681;
        Mon, 23 Sep 2024 06:37:21 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:2606:b0:6bd:9552:bc87 with SMTP id
 6a1803df08f44-6c6a7f52ff6ls32734716d6.2.-pod-prod-04-us; Mon, 23 Sep 2024
 06:37:21 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUzvmQaj35YqGyDTW0B0A+mzEUwZQT9eT1jS97g1A9IzsBFwGV6YDEvADhOMfIGlsTBcZbBJ86QZoziHw==@gapps.redhat.com
X-Received: by 2002:a05:6214:2d44:b0:6c5:5384:96b3 with SMTP id 6a1803df08f44-6c7bc80ea2bmr131786076d6.52.1727098640817;
        Mon, 23 Sep 2024 06:37:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1727098640; cv=none;
        d=google.com; s=arc-20240605;
        b=SdQQFT6QbCwldFPpHIMV+YTw4FQnD2XRYRiG3epSrZmysSMkT/IHKGJ3/Uzj8uj1/S
         3gw2YvhuitzXCbLlompe7H0Q6NFr5EcFatIojKp2OAHk73ET6BL3cIUAcaQKssrbnsXI
         INLHG3yW7KU8LQgOEvKOmho8z0P8j5xFH9vAMwTjAUHDIFY72F9vQuXiz1+2ot9e8NxG
         k8OAMGFXGT4Wfh6lfhe+l6/iAR0ibBomoeQXjVd3yV5ZghPNR6ThqjI6gY0EDgZtwpPE
         qMxRxFxv8FW7SaMxlvyCuSsyUT/xV3PVMac6L1v/lC1TsSw34nbkiYl6FRV6ypCN8kbv
         D08Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:ui-outboundreport:user-agent:mime-version
         :date:subject:to:from:message-id:delivered-to;
        bh=90FjjV6iKn1uSKiEB7+vOYos9PsCzQfT4bF2SYnwsfQ=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=jsjU8R6SaD6qVSllEQGowNgYIjGcbBLaAUZr2p8z+nPbduOnyiyh2KUVa2M/yJijIj
         mEUobEnfdmQPgrm9GVvLwZOZWIRwuQnIGcAbcVqHv3A2R8Dsc1EHEi2R+Ns065/qWoP1
         8GiwP7BIJPaFo5gWKeHAXGzoijG25U+2C+ilj4TTyY2N4ECIie7S2RRSGu0Zv95IPw8X
         Tr+pzdkEpGm7qViK/XuPV1ADzU1GK2Md7yDQfdAHGyHij0B6VmhA4m7F+NGnB6qlKzDn
         SA7lLj0SFS1P6zFLtcPIbN5aM37U43bPJG1kwJnBVxbWFZJOWEk1QKbeGG+VqtLD1k7b
         9vLQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.22 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6c75e453892si106350056d6.101.2024.09.23.06.37.20
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Sep 2024 06:37:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.22 as permitted sender) client-ip=212.227.17.22;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-646-9blnkvqNNdWQSXDxAg-ZiQ-1; Mon,
 23 Sep 2024 09:37:19 -0400
X-MC-Unique: 9blnkvqNNdWQSXDxAg-ZiQ-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A84BD190A34D
	for <blinux-list@gapps.redhat.com>; Mon, 23 Sep 2024 13:37:18 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id A5C8A1956095; Mon, 23 Sep 2024 13:37:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.33])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A2D831956094
	for <blinux-list@redhat.com>; Mon, 23 Sep 2024 13:37:18 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 16D98195FE01
	for <blinux-list@redhat.com>; Mon, 23 Sep 2024 13:37:18 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-347-J3g_2GE6OcORu1zLB6Xw7w-1; Mon,
 23 Sep 2024 09:37:16 -0400
X-MC-Unique: J3g_2GE6OcORu1zLB6Xw7w-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.100] ([208.107.97.40]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1N4Qwg-1ruoNY1qCs-00ttKR for
 <blinux-list@redhat.com>; Mon, 23 Sep 2024 15:37:14 +0200
Message-ID: <20240923.133713.763.40@[192.168.1.100]>
From: "'Rob Hudson' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Subject: Drives dropping offline
Date: Mon, 23 Sep 2024 08:37:13 -0500
MIME-Version: 1.0
User-Agent: POP Peeper Pro (5.5.3.0)
X-Provags-ID: V03:K1:EW4fTvQZzsDyOAiPrimnfa6x0D8SqIFmQmUJlbSjsL2awXxgdIt
 j9aEZFYVzgUj4jFem3h3FV6mDeV5vYaUyi3MVum6Ok50LORTndlGfx0RHky6KIDozPvqesM
 Bjdr1ouOdApAsxD09VLeNHeObFmi2DZSk5bahQf0wLJDjl4dnH8IvELJmdTE7DzWGOyDXki
 h7YgUyeYaCdHiiTVr7ukg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:aGKC2n7zk+g=;d9TDwERHQyeRhHIiz8Ez6DOInf4
 fCXzg7P3M1+pe4B9uEyXpOdDIFYfHRHn/NdRZkDphgr32ePVc/1v32C748HmzUHdEPeZHlxF9
 7aqggkA/+pabFnDeqpZYZdwy5hPD1VU2kuIGPY2tINewahZ9Feid65WrstSPFewj9zEXhXIoA
 jN+jH4+RZw5LngzSWeUCeEMbhzTP8b+lgVBo79Y2zx/WhlgVo/c/2EOjHtH/vhdHQokET8RqK
 iWmJuw/IxSlIxygKz24w5Zd41nYPsOXVBIck66uZJM1r0i81n7Y0wM7G7DxPuIxPliFrEEazq
 kHaZqV3TH1Bx9bFLhfGxNooVHUCpUtSj5hDSuuQS2gYPYhbCePtOF4Wn/PNQj3/P/77mHSc1/
 xSppPME0iFVIV25TEvbH2NqF9VvoZbvsWSCcWE7v/uFS5qBkQg+6hbGiN9Xm6jG/eivMDPAhD
 t3VCAPtta6mdfPozZjY5eLZqsknqk2aSZ26SFIrB8AiARLSky1ZwJ4XBUU2bFy7wH0KmJ1OVL
 pFiKXkeRmdFSW16IijyDPjW0T5ORUqnKOVg4oTKqhfEse2DfRSrO0ZC0oDHa5cdJ/FJkF6L8/
 FXHCldiM73Tu7ROEbQQrtrMYC7rlmZtyR038rcIHDVdPGxE9h1Cbkkd5d9nbpMWp5BOLMtTQW
 LgbSniqDyI9ZO07Totlq6s9h8ncLOoVuUU5picIpo/den7ovcwsk340Ces0H3t4stwCDbnQkH
 h59MPteZ7rPo32HkRiik2WCC+XnVpWedv1UpbFVdK85jrSiRNEGmLTXZJZYnq49MidtLbJuHv
 hlseeeCrVoK/ge+7eGEXA6gXQahOCQzoyGSBhnZgdmhHw=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rob_hudson_3182@gmx.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rob_hudson_3182@gmx.com designates 212.227.17.22 as permitted
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

I run a small data server with about 9 drives attached. Every so often, one of them will just ... drop offline, with no warning. I can remount it, run fsck, and it recovers the journal and mounts again, until the next time. There's no pattern to it either.
I took several of them out and attached them to a separate power supply and it still happened.
Is this likely to be a sata controller issue, or a kernel issue? I don't have the money to be replacing a bunch of components at once, hoping to throw something at the wall and see what sticks.
Thoughts?

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

