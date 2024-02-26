Return-Path: <blinux-list+bncBCRJ7NN7ZUGRB2VV6GXAMGQE4POO33I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7E3866E8C
	for <lists+blinux-list@lfdr.de>; Mon, 26 Feb 2024 10:33:32 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-42e8bc54b0csf3850461cf.2
        for <lists+blinux-list@lfdr.de>; Mon, 26 Feb 2024 01:33:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708940011; cv=pass;
        d=google.com; s=arc-20160816;
        b=pK+wQowTlyNwMF8U7mLNgPBecyxLICtvoDCpqkCBxKcafdx7krKTaC3Uv7XxqpDb/e
         OhpI+Im+nMIn6i5e8ouA5EQKKnj2Z7S8HravUDSJc6atkwRdJnTdLCUdWsrTimbUo9Ag
         m715uDqGu/h88Ii0J1gum17/8i6SwP1MXbC3HxEvWCswjgUBBMiKwMG7gjguxJzJV1Ps
         tXVoycdZovAZkEyCbsJQlIT1hDdJ4O/c5uCOoQ5u4iezouLnhvgyULykd9nPepd70VkD
         SFIue8x8aVd4xsQyUVCWzj3gxJO039yBPoxg13oT+shHf6GmQ8OsAELb6sv2flbkm9LJ
         ElSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:from:message-id:date:references
         :in-reply-to:subject:cc:to:delivered-to:mime-version;
        bh=7lJamMfrDm9T9PJw/UpB86LZGuQK9c0FSlPZQbcbl/o=;
        fh=2Y5oMrQGb+vJ49VkAYaI7Q8q6xl5Kt4cY9bQiEZ4NQM=;
        b=lE53E7WKV+tQ0Pxh5ucnzseDvdJNAd9RnsZe+nwr2IPnPNE0mBf7bpdAVnG7I+Bofo
         qUoSczWe/byGXzR03DeEtnj6J41K7Ck3biE7YigGA5dj+QsqMQ6yr6tWDyJj8Wd1FtgA
         LgSdrbLIR3sBg1ivvbgFmAt3PFzLbN3l7E6nV3Wr5voGB5JQSGR7EKD0eMoI6z2G+DZ6
         0bGL/iOr688iEVDFmaplBFAyLFyX8iGNq1Gi+j1EwQC3bltGxGU18MIYkDJyLHXmgFV1
         +bU3ph9l0o2l2BmaswrENRhvL6EBy1eQpxMgecsYMDY23+D2TXr3uLYq1hPqQQD2H3bi
         0WEw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of locust@mailbox.org designates 80.241.56.152 as permitted sender) smtp.mailfrom=locust@mailbox.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708940011; x=1709544811;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:from:message-id
         :date:references:in-reply-to:subject:cc:to:delivered-to:x-beenthere
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7lJamMfrDm9T9PJw/UpB86LZGuQK9c0FSlPZQbcbl/o=;
        b=FyRyP5KnKGLwudhHt+bICbINHNIAoiLtR1RMpGXrsq1mr/AtgNKnnGABTEAUA5pWxX
         TjO1t3ZFo682/UJpD31ItlrZQAaEl5+/Vfj0UEop2NvIGcQ7Ks0K3IMi1UK/6UIXKZeJ
         vMBaT6wibTWnibt08RwQD7fE1yxVraJzog35t9ZBgv1hta6bJPDFRS3W9JSOl/pdX5MT
         pocgkvMJlOeXidxzbWtl9d86sUC9kdNHX6B0WK+VeRl8vRYvg2KYCcsnXQfXuxN31CFb
         TZ8cyx09iCuiuNJRPrjIqXiQY3CtnWZ6y1qpwVEYSV1TQlr8vYLqV5INq6kLtFLlihOA
         KkXw==
X-Forwarded-Encrypted: i=2; AJvYcCVJFwHUKIb2T3w3S60GuXRgJw4V51qxDzcjz8KPnIe5T+ITPMBVsiH5lBYIgsMohVbpG4uy7zk2Cf2Bh0Q978PwsKT8rTHJ6Xug
X-Gm-Message-State: AOJu0YwhWD6qs7m1bCAjXaxf8kIUnuc3OH6SkTv4mPNCFyMrhhPmpmZ3
	iG++1WhOzHZNDSARs7ko+EBhxou6LHGDKphvyNAW70wi4mzhb6GZmhOHcEWwKKQ=
X-Google-Smtp-Source: AGHT+IH7vUKfcD1lVQR3gYKbOIqUIOEUhJmTu1MuFVc2JYi2YMfBYyidE4I5OroyP8Qyg5nwVom/Hw==
X-Received: by 2002:ac8:478e:0:b0:42e:57a5:beb4 with SMTP id k14-20020ac8478e000000b0042e57a5beb4mr6919740qtq.38.1708940011142;
        Mon, 26 Feb 2024 01:33:31 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:190d:b0:42e:8ba6:eb34 with SMTP id
 w13-20020a05622a190d00b0042e8ba6eb34ls449859qtc.2.-pod-prod-09-us; Mon, 26
 Feb 2024 01:33:30 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVyG7aEwWD8tMz1aEiqWfX0QDaCZnYc/h/HGtMl7+dJ6GhZKwiuwHa9zVOBxC8lxDNEqs9okJJCCUn4BQ6cqjjdd90v2lHvCnPAvQDg
X-Received: by 2002:ac8:5701:0:b0:42e:7f29:9efc with SMTP id 1-20020ac85701000000b0042e7f299efcmr4234657qtw.39.1708940010307;
        Mon, 26 Feb 2024 01:33:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708940010; cv=none;
        d=google.com; s=arc-20160816;
        b=Li6v16KA1h0WJgXN1vL++YOaelMh9jZWeXuCVporHXete5SvWHlK2Qx8C8hg9lUOeu
         4YY6dQ9i/SGlAAVes17Ph5+i5TzVENfv/cDNdmIVKqPVeVPEKsz0OewlJRUzMDq2bFll
         K7g4XNf6JJcxvPIvtHTE6OCapaFA5ZgwvjuX+18W3i+jwokhyWQBF5Ef1R35UOGNlUVv
         WWtjW4JbX5sf0cpwKKXolaZ1T8MbCL2RI7H60ylihWC3/Ywd4S8lP3A/LK7Wv9q35RRB
         Qw62o9gkjZWRxMdyGVhEneMdj51b+Y077J5ddu1dWmpsvYiznF+16MEJ2nE8gQYIqMlI
         Acqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:message-id:date:references:in-reply-to:subject:cc:to
         :delivered-to;
        bh=xL5LVTsqCNCAGYsE2Mz63wnRb5c8BJAeCpU8/QrjcY4=;
        fh=Wy/55s31yv0nJn77pKT2q6x7KVZiWVteHw4Chqakt7s=;
        b=0aiiZT6ail6MGGLyF5fo7BB5zfGIcX8KfgUK6vTtiVJ6Q9Pc83r4ok8kaoNaMKPh0x
         7jRUse5WKJid9JYdh3POGEdv9R/rSDXETeg5fiZGAAK8HDJYo9r6plAcAbPXABav4s7p
         QXAulQOQ86HGB8/3dnq0gfTWaO2y5tIZMclJUg6MXO2X5xeLGVtu3PezR0UpIswc89JG
         Xt9+cLc90mzrIrx+UexF8xbHmjpbYIBZYyLeui+3YioYl+2aNZ16gYVGakfTb60B4J4B
         +Zr44wYiU9QFPfE5H5j4HMhIDOvAf0i2dkDASFbNX+DJbFvBVlCuxK1htScYlh9VW27r
         ucmA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of locust@mailbox.org designates 80.241.56.152 as permitted sender) smtp.mailfrom=locust@mailbox.org
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id n15-20020a05622a11cf00b0042e7dc21422si3003929qtk.330.2024.02.26.01.33.30
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 01:33:30 -0800 (PST)
Received-SPF: pass (google.com: domain of locust@mailbox.org designates 80.241.56.152 as permitted sender) client-ip=80.241.56.152;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-100-e2geGL7oO8mpaXEJnI-u_A-1; Mon, 26 Feb 2024 04:33:28 -0500
X-MC-Unique: e2geGL7oO8mpaXEJnI-u_A-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4E8178828CA
	for <blinux-list@gapps.redhat.com>; Mon, 26 Feb 2024 09:33:28 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 4ADC3492BE2; Mon, 26 Feb 2024 09:33:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 11E57492BD7
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 09:33:27 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B8CB11C29EB6
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 09:33:27 +0000 (UTC)
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org
 [80.241.56.152]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-563-1hJtltaFNnCnD24iUPwP8w-1; Mon, 26 Feb 2024 04:33:25 -0500
X-MC-Unique: 1hJtltaFNnCnD24iUPwP8w-1
Received: from smtp102.mailbox.org (smtp102.mailbox.org [10.196.197.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4TjwHm4h2gz9t4g;
	Mon, 26 Feb 2024 10:27:16 +0100 (CET)
To: "Karen Lewellen" <klewellen@shellworld.net>,"Rich Morin" <rdm@cfcl.com>
Cc: "Linux for blind general discussion" <blinux-list@redhat.com>
Subject: Re: archival social media for the blind?
In-Reply-To: Your message of Sun, 25 Feb 2024 23:54:30 -0500 (EST)
	<Pine.LNX.4.64.2402252345480.900490@users.shellworld.net>
References: <971136C7-7CB2-4BF6-9528-60C5255889FF@cfcl.com> <Pine.LNX.4.64.2402252345480.900490@users.shellworld.net>
Date: Mon, 26 Feb 2024 10:25:04 +0100
Message-Id: <E1reXEO-000RgT-24@lapcust>
From: "'Artur Rutkowski' via blinux-list@redhat.com" <blinux-list@redhat.com>
X-MBO-RS-META: qfui5dmc8xn4m7p5euof61huxoz8hrfp
X-MBO-RS-ID: f5a28a8bf971a146708
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mimecast-Spam-Score: 2
X-Mimecast-Originator: mailbox.org
Content-Type: text/plain; charset="UTF-8"; x-default=true
X-Original-Sender: locust@mailbox.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of locust@mailbox.org designates 80.241.56.152 as permitted sender) smtp.mailfrom=locust@mailbox.org
X-Original-From: Artur Rutkowski <locust@mailbox.org>
Reply-To: Artur Rutkowski <locust@mailbox.org>
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

Hi,

Little off topic, but answering the pandoc's problem:
pandoc --from docx --to plain file.docx

Yes Karen. Search, search and search again. Then ask anything.

Artur

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

