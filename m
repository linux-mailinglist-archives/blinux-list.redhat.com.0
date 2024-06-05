Return-Path: <blinux-list+bncBDYPVTOXSQEBB2FGQKZQMGQECFDTCPQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 983578FD2FC
	for <lists+blinux-list@lfdr.de>; Wed,  5 Jun 2024 18:33:46 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-440302d8548sf19690541cf.1
        for <lists+blinux-list@lfdr.de>; Wed, 05 Jun 2024 09:33:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1717605225; cv=pass;
        d=google.com; s=arc-20160816;
        b=aZ82lOh1Qf9z80MY9qPEqg3WeNNKHI1DcGjnhByJoj6VymLmyKqOHh5mEUW5wdtbl6
         n+b88Px+8NijVwiuv3rcthPYLsmfE87DWJMvnosEnIwGOKtU+tWhGHsPQdm17ggmM5d3
         SlwP/50x/mz388FXDTpBH3oKbnY81Fucb8xkMtU/6G3ummXk3HePCA1Y/ciM1qI4CLIt
         CqslnLiWQxvhSILT8TWyZFlvlstFZCw0jAEvr10JsoEOkQykTHzrkywyWLYubd8FVlgW
         RHEtHT4RjYRvzaKZAI+daWMNnhw+C5vf9Iu6XyaWcE0dBI43frcn+8g7XRTd6k3qnKqa
         ZQqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=hS28obv5whrthLgoCIcUc9UBC/hL34h3ktcrFvBuqI0=;
        fh=CUxYeFybrTeIS3wU3wVrDbhj19IseiE4zgDVp44Y4jM=;
        b=BOz/tTzJlb7bgE2/D68eS77VdZIStDDYSOIGZQk8O7k9mj5zZVg6GSQVsUpIN+Qk3W
         AZpyWOgx1sdhU/I9y1N3FrSB4NuQfHKYVDAwVo4z/3Y+BrZqifBaUZK5Z1fwNWocHMZS
         HePreqKY1tZCaW9O7ulelkDNzX5rwmD8lb47iqHrjAIKcIXBl3g9Kz1bmAaUocwIs97A
         L7lsC1uWFg1GpMYfSgoFJNtoowJKGSRZ2Tyl4pTU0X2/gPy8Ji5RNo9i4qbP8UJHZqjr
         RINGCSSqLj2wRjtZKT+mHGHmC/TjGt7CQykcMr+ednkxPpWjfb1/L0FeFZQm5fARoO91
         /UNQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717605225; x=1718210025;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hS28obv5whrthLgoCIcUc9UBC/hL34h3ktcrFvBuqI0=;
        b=hgMA2WU/l/ygl1UwmZTjB4rw/vnIESpAW+PVpIIb68YVKO0mXH5zmvaCUWOWtI1YoW
         dN1hi8EBo0vdFlNlT0WItDNorSvqSNkyxj2R9OgVpb0yn5LcgD9VBiz7PjDB21gxldf5
         ZBN2777t87EEWH11/8nsNnKUUpfxcXuOd0ZTPAp2Ituh6i+zgJ2TetMST6K+9CFuVGHa
         BaDZDiK5LZM81bWRcdBoYwb+lh71TFOGY+w04xI0rZsspvH7T9/ZjSzsZpHZhLjPAtqq
         TvJVE+lxLr/W3QDN7OopVa6xansmUhYZHFcxh41wFfzlR/MziV/CWKL8W0VC5ELkWZ46
         NhAw==
X-Forwarded-Encrypted: i=2; AJvYcCV9ipcXQvEswRsQpynuVrqUhPu3Dq3b9zFXprFP9inFNBXVV5QWForvwhlbtsJaavZ5qXEmxEmtYMkehRlxIZhCHG+OvsnsrdTK
X-Gm-Message-State: AOJu0Yx39zOHuMkNo9G0sfAmMeu66PmsKpbgNC2J6Ep0s8kdH9/6ucj/
	w+0a0tqo/Lj+M9RrOvROr/Ws2iuETlkfRiQw6c7QmKyy7euVe2V9/QIWBr11IjM=
X-Google-Smtp-Source: AGHT+IEjD0eLiDrZH5Z33SSoxeNEYy3oNqsnrSG0QyN/tN35Gm+7//Rr+OefTtTAxPxM69SOd0hGPg==
X-Received: by 2002:ac8:588c:0:b0:440:e70:32e4 with SMTP id d75a77b69052e-4403622247dmr3171781cf.13.1717605224947;
        Wed, 05 Jun 2024 09:33:44 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1898:b0:440:29:dfe9 with SMTP id
 d75a77b69052e-4400029e353ls22403381cf.2.-pod-prod-00-us; Wed, 05 Jun 2024
 09:33:43 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUrEunN1KNz8qqnKOrM5/H6CtdrmeDJ9XmUViqwg2mrRZZVBamyGySz8yIa4DdWgRcV0iW6su+wwwj4jXPowUpLRs/+UlnQnIzm5IaK
X-Received: by 2002:a05:620a:40c1:b0:795:1f1b:e638 with SMTP id af79cd13be357-7952f16df96mr30351485a.32.1717605223675;
        Wed, 05 Jun 2024 09:33:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1717605223; cv=none;
        d=google.com; s=arc-20160816;
        b=GDNip7Bm061pts7DmfrFUuGVmqeLA6n+X4lveH9iGqxW9EVK7zv5lBYFZ+BZ5C1ASR
         jU9bsGztNrI6g1WKDlNGjQXXR95kg8pJXcR1g3V8Lfn6VNBcaun8MGWjfCfoUa/NpLkC
         yLGmv8b/YGvbmhgdcfLRiOKM90l97Sdu4ttBzwACGiM7PpbGpJCJDmWtk5fEbUymX0db
         qnawW/3EaPaXd1qPbrn5QDJH92fKLjkvJEvYNzXJmsgm5vUsfeLZsrqHBFQASSgDQXgr
         vpNZ7cp9ILTEcczwEeNEBslniStZKDwr8JpvABzNZQvfqf1wagEa5zLQ2mtpAxwr9g6o
         4BmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=SwSNleokvbsfJMbAuWEwCpUAYb8UFaTkvWjbtCiXQTw=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Aw0zenZmsULKkEjGRo87gGkfEpnQFn0NW4zxX2kr3na/u8IjuOzFASpTUhiMdKJmtS
         758BewLhe+Q5mdP/38qQnq6UWgsBKo3nqHACrIJI45LyFRvT+iUb83B9DpHYX9kdeYCN
         0fr+XRN0JA8s+A9yS2Y2LjM23E4v0of8i5n3wc80MDv8p1Jz2a+y5x6gIBFaCfnaa8om
         wYAkKqrt4Wzww2d0u5OMddRKcoctQ1wJghYF/EAhV2HSiLB58pRljKOzrNK+x22KbD7T
         iq7fhtZRXh8NcoMAiutyJaZ7NtZ69ttsEaFWTxsUwhoVoPS6c/+nROtPmwH9guT3FWe3
         nZQA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-794f3063dadsi1529194085a.361.2024.06.05.09.33.43
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 09:33:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-287-5lqhL4AWNLG9tih1CJZIiw-1; Wed,
 05 Jun 2024 12:33:42 -0400
X-MC-Unique: 5lqhL4AWNLG9tih1CJZIiw-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4EB241955D7D
	for <blinux-list@gapps.redhat.com>; Wed,  5 Jun 2024 16:33:41 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 3D78A195605F; Wed,  5 Jun 2024 16:33:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3B59E1956055
	for <blinux-list@redhat.com>; Wed,  5 Jun 2024 16:33:41 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B91A51944D23
	for <blinux-list@redhat.com>; Wed,  5 Jun 2024 16:33:40 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-473-sJbm7CHsMlSiI4djGrPtvg-1; Wed,
 05 Jun 2024 12:33:38 -0400
X-MC-Unique: sJbm7CHsMlSiI4djGrPtvg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VvY1X45Mpz42hY
	for <blinux-list@redhat.com>; Wed,  5 Jun 2024 12:33:36 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VvY1X3qHmzcbc; Wed,  5 Jun 2024 12:33:36 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VvY1X3lvzzcbC
	for <blinux-list@redhat.com>; Wed,  5 Jun 2024 12:33:36 -0400 (EDT)
Date: Wed, 5 Jun 2024 12:33:36 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: on debian installed the makedeb stuff
Message-ID: <44422bae-814f-be23-2399-3130753ef288@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
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

That included the repository and the mist program which can download from
the repository.
A couple items available on mist which may be of interest to screen reader
users are pipe-viewer and fenrir 1.95.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

