Return-Path: <blinux-list+bncBDYPVTOXSQEBBHEXZK2AMGQEFNPPXLI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id F41E39305D7
	for <lists+blinux-list@lfdr.de>; Sat, 13 Jul 2024 16:13:50 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-44f4e1569fcsf16524831cf.2
        for <lists+blinux-list@lfdr.de>; Sat, 13 Jul 2024 07:13:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720880029; cv=pass;
        d=google.com; s=arc-20160816;
        b=aozFk9pSLREzKusNIeO15uMTrlPylxkbs5z7ivnCe5weeAV199ukRJgaNDtGI1vLn3
         4oxrGzVOHE4Z0CrCPIZ1nLRsrChNx2CAZNSQMOJhijOj/IEfBKYwTzViF0aeFcKXhldQ
         TsP7NE+jTj043rDQyOwbvMVih9ayG+huT07cWNNDwstyKdJynBlGNvh9n4D2Cn9AKNjV
         +NPE/Q35GjIoDE+cOOYMIt5l8YIsPn5/yOKRdMtEwW5nT1RVp4dYsH9qTRZ4quMnPvqr
         AKZT679uIF1orn+AVP3tBScHDHXKwQn5s/eL4ujT/nHjFSUkvElRgKk07Jnt6iljGkHW
         vbTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=4RXmWH5lyET9Eu/zTYDDsYqflNIJ/Iy9gMvaXWsg0JU=;
        fh=vW3mywFerkXZ1mUR2Mmm0AFu22CK6B6XjKpGWwRTQ18=;
        b=JRV5QUdaLBibgj2OmxVeQw3L/tZicfbhtpfhU3G1VqAlr0DoiIJMvsJGhtrNl1nmcJ
         LdyAcfm2HQwrB/poOLpsEM6DuAIcE1WTttlYi19mxV9MC6il6JEiH8sEkt6fVnSJK6WY
         DNtkrZq9ODN1xxOCGfj+dST98RzLOG7D/bdBik9eVFWQpYIVwmqlGxJfrzko/A4bxBZ2
         HtLeo7q6ehZVTiKR8dBCscsM8Cn5kKuTIidPSEc0YHeMRM19XiJ3W5oUhT06v9XumnTS
         s/gRkaBmjkTn4z41ZuAvNFeaeD7aZ03f8zI7yamG/EMcTas4p/xiIUk4rkTmXLgq597h
         Zdyw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720880029; x=1721484829;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4RXmWH5lyET9Eu/zTYDDsYqflNIJ/Iy9gMvaXWsg0JU=;
        b=jYA46T+gZ+AOgXH4Eyu/4Xd/tAWB5BXIwoeojt1PdCEln34Th9kifoemsAW/7Ux7FE
         9ussC1gGx2R3HQ0fhI4Yn5O1CXzVFc5i5JCOFYT5eChw8VeRr2Jg3xt85Vif2CFV2cZd
         +o3HOxbw5Dvx0MWp4fvZamEWRHsqvq7LdnLU56RnYaqka2WPQ63lSY/wxrLbrgE8aqxV
         fY8hkdvpVHgPimk+wXuheG7aIxQUAUS/AfeVKvQ3GuZsTLVA7QqvnGj/DTGtrG08z4+C
         7nlOiRJvtkh5kIqnEJdXS4IRzmwPxLWqSDD2ZIUt1ggqLo/Fz0Nyg52od9NddxxHv1aS
         4mNw==
X-Forwarded-Encrypted: i=2; AJvYcCX5HuIi6H1f+iN+zI4mBKvbegsDimuArpsWuqmRLM3FYOn23r8onWqyhkfg0FyfUUyh62S33C99x2Vol03BOUJRqmfM2DI08n+U
X-Gm-Message-State: AOJu0Ywb/cwrS7RX69b7xZ5ehnxLbQMjYB9701RmZwRqxyTrlhaQ9nm1
	CCPKc3z6tGoiWvjqSnRUZlIAtkuFbtevpZD0cEU5opy0+Jh85/GcSsv4UxrSNiw=
X-Google-Smtp-Source: AGHT+IHh4XAAg+AxWTATBKXoghtCGvetgQfmCZhAueeqiDpfMNjI7Z34k1G+XTigkS598iFpRDHOfA==
X-Received: by 2002:ac8:7e92:0:b0:446:64c9:df6a with SMTP id d75a77b69052e-447faa51526mr173333571cf.55.1720880029391;
        Sat, 13 Jul 2024 07:13:49 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:5202:b0:444:e88c:beed with SMTP id
 d75a77b69052e-44d08c3867dls41241201cf.2.-pod-prod-02-us; Sat, 13 Jul 2024
 07:13:48 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWryFXF9y7VojQ8W+FUXtb1WKt++3O38AJaTB3z4CZrakZPpmqhbvbkt5p5M8t6dFYlGQxldtFijCcbSDN3W/oZPm20mDb8Jx8og8jA
X-Received: by 2002:a05:620a:4150:b0:79f:87c:a540 with SMTP id af79cd13be357-79f19be6361mr1902543185a.58.1720880028252;
        Sat, 13 Jul 2024 07:13:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1720880028; cv=none;
        d=google.com; s=arc-20160816;
        b=wV7HB2mI9x3SQXqmkYo2re4r1tFhG72kM3uN2RVGn5wA1vmvTK3ezho8pgrvk+lQd9
         8p0bxkQSLCFujl6pmGi/3gvg3JdzavHtmVQCpB7ME/ZI60zeK0kunpyjZ0ZQQtmjrXCh
         ix4gMp/cQR+o0raZrSoSPvUJZqivA4tLQYJSuUFrOUZapvrYuoz7gc5xCC5uVjSzDqs+
         wol5D3OP6zIrg0goRrWn/9sWZRfBrlmiJQ7cG4s8OYXkmsi2v9dqNl4okXx98xj7GtLn
         VxJbAxK2Xlyn267PHZubDr3t3WEcUc9qgqA+9IGftcnzPMp7JydAeZnv2MgJy+s/rSwd
         HGTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=n8652K/sVALKIk+FYZ72/MC47MP05oZHoFYVwjEGRtI=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=tmKWs7AJaN+jI23j1L99JEGJoQxWfd0Zz8YCDMD+Ao9vvBkHpSckqoRKX6D3rC3oyQ
         WnvyIo4Fy0PrVeG6/hUz/j6lr8x6hAG9Si8Y4xzGMjeFhDqmftk0PpaYBLKbht2EXGzn
         3sS4uUDvHFxPnIcnv1hotTozIZKVsBmFKyzXEWQfoXw813RBtL3pjd5QShyYStbknBj+
         iMOW0dBjFqkEKvC0f4JSC+uHyOHnHymVzTurlMF+NKiIgtep0PedoRi18PmoaMZ3hQdy
         cU9nJ0V1aFsyhIfjY8MTc625HExWyzHQRJFknBUDYMNShi2XfsllVCCmGEsa80tBKouI
         wcRg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7a160c69a51si128019885a.517.2024.07.13.07.13.48
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jul 2024 07:13:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-635-qxcQMTJUOYmKS9Val0xLCg-1; Sat,
 13 Jul 2024 10:13:46 -0400
X-MC-Unique: qxcQMTJUOYmKS9Val0xLCg-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1EA1319560B1
	for <blinux-list@gapps.redhat.com>; Sat, 13 Jul 2024 14:13:46 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 0F86B1955E85; Sat, 13 Jul 2024 14:13:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0CEB61955F3B
	for <blinux-list@redhat.com>; Sat, 13 Jul 2024 14:13:45 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 82D08196CDEF
	for <blinux-list@redhat.com>; Sat, 13 Jul 2024 14:13:45 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-173-OCDAzhGRPv2w1t6SbhIxHg-1; Sat,
 13 Jul 2024 10:13:40 -0400
X-MC-Unique: OCDAzhGRPv2w1t6SbhIxHg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WLr6X14K7z4Ljf
	for <blinux-list@redhat.com>; Sat, 13 Jul 2024 10:13:40 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WLr6X0nW5zcbc; Sat, 13 Jul 2024 10:13:40 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WLr6X0jX4zcbC
	for <blinux-list@redhat.com>; Sat, 13 Jul 2024 10:13:40 -0400 (EDT)
Date: Sat, 13 Jul 2024 10:13:40 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: re: poor internet service makes torrents necessary
Message-ID: <152db17c-c1ed-099f-8e2e-3a27daebe07d@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

One thing I forgot to mention in my last message is when I find the
torrent url to download I save that torrent url in a bash sscript along
with the torrent download command so all I need to do to seed on a torrent
is to run that script.  This way you only need to look up that torrent url
once.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

