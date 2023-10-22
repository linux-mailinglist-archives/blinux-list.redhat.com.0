Return-Path: <blinux-list+bncBC4KRXEWRQERBJMD2OUQMGQE7BWJ7VQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2597D2191
	for <lists+blinux-list@lfdr.de>; Sun, 22 Oct 2023 08:31:03 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-41bf9a5930asf27726021cf.2
        for <lists+blinux-list@lfdr.de>; Sat, 21 Oct 2023 23:31:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697956262; x=1698561062;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :user-agent:message-id:date:subject:to:from:dkim-filter:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rdz3KVNDKkaPmMxBH0wm6ZwNuq35uU0OSJOlNTbnyp0=;
        b=f2dqLTDVxjC6ctjBpyq9EpJB920ZYUb3CKIZAxCU7oN5AJszUnF5QmkDjBq2yP1ac1
         /ECCqQbz4Nr50ImhxM7/XNdSPGkVz0R2wE9FetuXXkICr3A6TAqQThqHDOF0MBWbSgwI
         GAxoX2Uyky89q5psPEE5LjJSQrzqV34F2Fk9Sdb6TTXXX1BiwZFkRvlKDcVoAIIJEXTg
         nmf2t3SHry6ypDjGxlzQgM3Q7mc6agkWVxO6qW9D75BPCaGe50ng0tr7OqidoTfCk2rd
         7OnX3jes+6kxv6LasZKqoYpvRjcQCbQiq5aGzpU98K1rSCVRwyn+h0WL1snORSvnkxw0
         0/tg==
X-Gm-Message-State: AOJu0YzZm0o0Di55s6Uk9h/kOhrbs28c2txwN1ZZM0xrTuURgOO+uNx6
	p7RNiZAZtsgKxe6zpErQPuthuQ==
X-Google-Smtp-Source: AGHT+IFzlPnXN8wabUfnyiRW45x1OoeTyIpKlpHrI5QudEnm33FDOLfzjyVeb9x6K8Cnk/NR9areEg==
X-Received: by 2002:ac8:7f0b:0:b0:418:1057:d835 with SMTP id f11-20020ac87f0b000000b004181057d835mr7962272qtk.34.1697956262040;
        Sat, 21 Oct 2023 23:31:02 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:4d10:0:b0:41c:ca7a:2556 with SMTP id w16-20020ac84d10000000b0041cca7a2556ls2482771qtv.2.-pod-prod-04-us;
 Sat, 21 Oct 2023 23:31:01 -0700 (PDT)
X-Received: by 2002:ac8:580f:0:b0:41c:f729:8032 with SMTP id g15-20020ac8580f000000b0041cf7298032mr3262095qtg.63.1697956261213;
        Sat, 21 Oct 2023 23:31:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1697956261; cv=none;
        d=google.com; s=arc-20160816;
        b=T5ItztZQdX6rbM4C8OveASxozsLQih2Rs8VgWbbuXthYUd9Pe4P+C7Tlc+NYvS3KdS
         SFZayL/eL3J7EjHWUFMQHLQUVgbWsku9StFeKdeuICnrNAVtGUgIkRhTOEFkNM58cNW9
         UBJhvDWl+Gmg4fcnyT7cwjCpTy3u7b/QYwgkirnLngDPFmknd2ZYDrAEA51L9aUsbMFD
         gNHsQh5jsLVSP8azeG5+RSADUt9PKN4I7w1xU1PumDfX2kCQuRFyXI1964/GXZGkFpzh
         9njtuBXZ2gEgFO0d/e2Cwq/oSYf59sgaDzuLj5SoE9q83MbcEsilNu8UVlSm30GjCBnB
         +KKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:date:subject:to:from:dkim-filter
         :delivered-to;
        bh=rdz3KVNDKkaPmMxBH0wm6ZwNuq35uU0OSJOlNTbnyp0=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=yB9/AqwmYlFJbkP98LIRxdbHVyJFjkPUA6WE8IWrwH8P0a+V19V+p4WvtEeU++alrx
         bA+/GDqDObaW8ezCqh/w21sTLxJKv6FR0a1iPc91El0yRTI4FYdptpS+EKCWQzsVg1o+
         yGhdJzUxPun6I9KmLPmLW9/1meRpKhAvmgjjAilx4YyTm1SP0oq4sAWZHqDXJ8m1iupV
         drTxlLr+dcC7H9wb96nGut6WRCoVqBCB/UgsyX5VstehgWpmuTssH3SMZiekIPn7t5z9
         rdlQ1SPRMbVImthXd4BVIoNHOl13kKYu8vE10CLpA8hlB6seMqpfAo4RgjsUPhx5xc9f
         g8LA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of srs0=bisk=ge=dalen.lamasti.net=lrs@lamasti.net designates 185.181.61.11 as permitted sender) smtp.mailfrom="srs0=bisk=ge=dalen.lamasti.net=lrs@lamasti.net"
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id h14-20020ac8584e000000b0041961b33c4esi3955552qth.59.2023.10.21.23.31.00
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Oct 2023 23:31:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=bisk=ge=dalen.lamasti.net=lrs@lamasti.net designates 185.181.61.11 as permitted sender) client-ip=185.181.61.11;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-639-8ChqRrx3MpSMnH8LjppbJQ-1; Sun, 22 Oct 2023 02:30:58 -0400
X-MC-Unique: 8ChqRrx3MpSMnH8LjppbJQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8C2CE185A790
	for <blinux-list@gapps.redhat.com>; Sun, 22 Oct 2023 06:30:58 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 89A761C060B1; Sun, 22 Oct 2023 06:30:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 828591C060AE
	for <blinux-list@redhat.com>; Sun, 22 Oct 2023 06:30:58 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 68204185A797
	for <blinux-list@redhat.com>; Sun, 22 Oct 2023 06:30:58 +0000 (UTC)
Received: from dalen.lamasti.net (lamasti.net [185.181.61.11]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-394-tSQVqD0VPDKSNYjhpC93_A-1; Sun,
 22 Oct 2023 02:30:55 -0400
X-MC-Unique: tSQVqD0VPDKSNYjhpC93_A-1
Received: by dalen.lamasti.net (Postfix, from userid 500)
	id 8BD3514C0093; Sun, 22 Oct 2023 08:22:30 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 dalen.lamasti.net 8BD3514C0093
From: =?utf-8?Q?Lars_Bj=C3=B8rndal?= <lars@lamasti.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Raspberry pi post install
Date: Sun, 22 Oct 2023 08:22:30 +0200
Message-ID: <m3wmvfmb15.fsf@dalen.lamasti.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.3 (gnu/linux)
MIME-Version: 1.0
X-Spam-Status: No, score=-3.1 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on dalen.lamasti.net
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: lamasti.net
Content-Type: text/plain
X-Original-Sender: lars@lamasti.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of srs0=bisk=ge=dalen.lamasti.net=lrs@lamasti.net designates
 185.181.61.11 as permitted sender) smtp.mailfrom="srs0=bisk=ge=dalen.lamasti.net=lrs@lamasti.net"
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Subscribe: <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>,
 <mailto:blinux-list+subscribe@redhat.com>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Lars here.

I've installed the latest Raspberry Pi lite OS. Previously it was
possible to login with SSH as the user pi with password raspberry. But with the
newer images, it's not possible any more. The recommended way is to use
the Raspberry Pi imager to set user/password. However, I don't have a graphical environment
to run that tool.

Do some of you have a solution to this?

Thanks

