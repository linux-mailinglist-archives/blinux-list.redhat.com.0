Return-Path: <blinux-list+bncBDYPVTOXSQEBBLGBROYAMGQEZMASE4A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id E746A88C5BF
	for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 15:50:22 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-430b772f6d1sf59502961cf.1
        for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 07:50:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711464621; cv=pass;
        d=google.com; s=arc-20160816;
        b=FEMuvEcLLJ9FZ6SehnoUdTrX665hfe7ctIT/ArC8F+DOuCGV6syvCFqhiQByqHuiNO
         A7/YWOioatxUnJDnwMlBlXVUAgxFgZN2AXpNQHY4HmR/NXybV9hoaCpVWLa4bR0mTuTA
         p2qiqyRV70i4+Nzzz9w7NCLNV6bcKqQI5+UF+WdI8SstjDi1s1iJLQkg7fIq/nglLKyW
         fvbHe3zXxS+6I56iCb0Prwl9LnguaaIezqB+w9zmdkNqaTtUe50ZsBJhV1Qf2uKL3qXv
         HSLTDUkKWDI3lQBjOkOz5fpemVZpbtUzgopGbZYQg19z7T+CF1yhxoaMuiLouSjtDlTl
         b7hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=j80iZyZdN90EClGghuH0YL74R2rkDW/+bsCFFlsJGZE=;
        fh=Myuoi6ClF7YBwYEETJbA6zH/Wdg7zwCoH10lnVTiB7Y=;
        b=UbAN9OA05Lik/XmxtKp6+Pe9gcp464ZP0q1unC5XrKG7NqocCaTmNJ7xNvq35qZ+ZX
         h37vyZIZfrcykmwfeZEUxmQVGiENDBa67wHvwT7AYLyuZKEi9uoxyOF7c+NGstNhq1Ws
         XDL025CJOgtJ/krv3S35jlTyb+kwAhEoCmgQHyiqgyYHRobbHN+wlDUnr5ngIKYoVCen
         Hmvl/gPdvk9Ahth4m6Kq6U9AH3xADrtqifQcjWwRlRN0DD4UrA3ePPJRBLLU8FcpoZmI
         YdIgYPH6ieMxz/3fHQb9n5Tr5HoHu7D2oEyWjd7rYRtJXXTt7qgu9TYoXBdv2UMcnTfa
         rxyA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711464621; x=1712069421;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j80iZyZdN90EClGghuH0YL74R2rkDW/+bsCFFlsJGZE=;
        b=SZG3Vt+F5pldWwAWfx2VoOcVEGvrKVC1rpYTthljZ7nn7Od1GEV5zJ7P+sNA7sU2NE
         WcMWGlJlaPrVwIiwQOS/TCzA6r0p3A2ovgwKNCGHzGalIKCCXXo118S7ZPDZ1+nBWQjP
         g6MVTsLyitbV1ZLzJJWuqTUtbonrPzr94vsG46C58yP5+xUF+0Ada3GOS+ZlUgJIMoWm
         RTKem/SItSsV61ruc8r7G1u1MquP4dqth6nxzJGNZqAJvRAvkGm3Y2dARFYyU677aeB3
         YaI4E3/F9F1H9+fJ07QfJ7UBmfXw+HyZkyrLNnBVZJr1E2FUUVFwb9HAb4/GKhf1JVbm
         kPAw==
X-Forwarded-Encrypted: i=2; AJvYcCWxm+Xrjexr9PNDDDvrw+k43N59PBPrmtVnYmRMSnXqF6izyyqzIU13QLOOY6alEnLYSLv/zRbNeQQUc0E49LwCpMZIET2TVpRX
X-Gm-Message-State: AOJu0YwgPyRoHMW/pv+k1xCoN61yrSTqVMYK4aC+cqo7xR8aPIeeyB28
	VAtfIHOYzXEbU8sPTOgG619tNm3U9Gg9c1IIjBfEabuXB42CwhPcymuE+ZoYPlM=
X-Google-Smtp-Source: AGHT+IFgiBsTnmZDGmV+aMzo7QbleSj+6T0bB7xIpXvnSNK0X3B0mdQjwnJFsORuM93WWOd2by8YTQ==
X-Received: by 2002:a05:622a:1ce:b0:431:39d0:6056 with SMTP id t14-20020a05622a01ce00b0043139d06056mr10131312qtw.4.1711464621277;
        Tue, 26 Mar 2024 07:50:21 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:304:b0:431:617c:bd1e with SMTP id
 q4-20020a05622a030400b00431617cbd1els468765qtw.0.-pod-prod-08-us; Tue, 26 Mar
 2024 07:50:20 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVfS6XxLH9jOtTsqrqivUVPVkt/JH8EBa5pzpCxSZBGdgE2bsAKKzv3AQzN+OAbIAP6Xhdtsnlup1GlmnJJnENTxNi4CCJC4M/k81zO
X-Received: by 2002:a37:ef0a:0:b0:789:edcc:8394 with SMTP id j10-20020a37ef0a000000b00789edcc8394mr10121284qkk.24.1711464620409;
        Tue, 26 Mar 2024 07:50:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711464620; cv=none;
        d=google.com; s=arc-20160816;
        b=N+KAekyA00JL13ncP1tjhECHUN/neVjLi1aW+GjfAXnnpJ5//LYNomHpISVYxboJMD
         oSIcg7ie8c+ErDLqCfuRRFMSEAc/043yhNqOy4vJuZ7DzrUsLvNlhrEu5j++4N9KtknJ
         Wc+QJ5XqpbV4524FOz4M7wK4A/CboMcg4Sqpuff1Ni64ZRV+GQm7WKi/Ypc33sNoLNLb
         iamRbV9I9OvT0NIxdezOvu2YwoTw3crTIsowGjeCNH2UniNmVsixnZmarNvXDb39EoPP
         EEo/c5OZ5HgY3obFXj08pS+erj1RqRI6TtlNQcl/Q1NJnr/swhe7/nG1CU8ScNHKQzeV
         ZXNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=H0Igvb+AIi+twiPEaUHJWV8LkirOFaqCJwzpoVSh8lM=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=jFptwz5fAfMe2YNcgdxF3LwSuG1IjRxC9C5OZfMhqEEFJKKPu51LvT9Ax/bU2Puu/H
         BE0y32fK/GiTPkdNxWRTx19IHGOYBbpdPfZlA8z+2rPOBJw4xG/eT5iYgBjQssVoZnjy
         4P+mf4IYgL08GH7rCNsEKgKF7ubMWogRiL148vspFmU12jGhI/ADESytJa5WLROenoZX
         +EofQXAyt7a06SPRFngHoqR8ZUbgj7GheDt+dVYaZREpAdEZvFEQETIrlEZNAU9wD2jP
         48U9dV0FY6lIuFi1VJcfQeyWKZHH5mSHnOlg2Mj6jXpIaQ1dr62WNQ9gKRCSJxLhHWh/
         EN/g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id cz4-20020a05620a36c400b0078a00871f2asi7358595qkb.519.2024.03.26.07.50.20
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 07:50:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-573-HHgpylBBM1O6LLldoH2kdg-1; Tue, 26 Mar 2024 10:50:19 -0400
X-MC-Unique: HHgpylBBM1O6LLldoH2kdg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8A9B784AECD
	for <blinux-list@gapps.redhat.com>; Tue, 26 Mar 2024 14:50:18 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 87B1640C6CB3; Tue, 26 Mar 2024 14:50:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4F98740C6CB1
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 14:50:18 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 028B88007A6
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 14:50:18 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-456-fxArfqP9Pbqqd2AvbgM3hw-1; Tue,
 26 Mar 2024 10:50:16 -0400
X-MC-Unique: fxArfqP9Pbqqd2AvbgM3hw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4V3t5403dRznZV
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 10:50:15 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4V3t536s6Fzcbc; Tue, 26 Mar 2024 10:50:15 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4V3t536p8lzcbC
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 10:50:15 -0400 (EDT)
Date: Tue, 26 Mar 2024 10:50:15 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: command line torrent users
Message-ID: <ea92484a-838a-ac7b-9546-77b13cc3f49f@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
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

I found a nice package called btpd for command line use.
The nice thing about this package is you first run the btpd daemon and
then run btcli to add torrents and get them downloading.  No windows stuff
here and nothing wanting to appear like windows as with aria2c.
Once you start a torrent you get returned to the command prompt and can
check on the progress of your torrent with btstat or btcli.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

