Return-Path: <blinux-list+bncBCRJ7NN7ZUGRB7PNZG7AMGQET5DBJZQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 6389DA5EB8C
	for <lists+blinux-list@lfdr.de>; Thu, 13 Mar 2025 07:11:11 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4768d63b1dcsf28992701cf.1
        for <lists+blinux-list@lfdr.de>; Wed, 12 Mar 2025 23:11:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1741846270; cv=pass;
        d=google.com; s=arc-20240605;
        b=kHchWoYhUYJGCC4ilz9I5ymQiF7CFjYmDq8KnAPh/dK6l5Z4fpPjB75fjA/I351DPc
         h2vCK51aHhoc44kWaTUOBREuPtqGDO3guDhVe8NWpPwQpby1YZHpORn/kBoywEkSzCLq
         4Oa67+Dst+F6lgT9bH8vVu+ej+Rm5H717aZ5fXF6tCQArhcZGa5tdSoUpQyc17+00XM+
         R5wbv9ZE8Sa2ZYjk+2hN9o/Fk7vAZJqpPuM95iW8rM5Up+Tkz41+Rp0oR3ts9KtVCo48
         v883sPZk7MbUDho5V8DgYpgHUcz3wA1vX4VEd30Ij0+8SCr6CGASQnajNEU72efndqeJ
         eV/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:from:message-id:date:references
         :in-reply-to:subject:cc:to:delivered-to:mime-version;
        bh=+8chCh0AROD2GN6qZmLSdwPLQHn/9v0TzhWh7RZnag0=;
        fh=fHfe6VZuSM7P5vMK8F1UldQKXwmj9sFEAxFZMQGMjig=;
        b=HAHXzehq2sbxw+9kEi6pmFW94ThL7hDmYSSlyYUAigFyOMybrhEBtbNzXj80YBJ9cm
         /e7lA/eJxOw0GcSgckt++aQKu9Ysx4o687DItMO8x93bhZHZcdXfGvOl/1j8eypf434c
         7aZCh2rU42BMiBtfoZO9akUBGTD6xBj8jLif/rO7Yoq4h/Inml2J0rcaTpwKJfMXu03e
         wCW9wRVlcJShJt4X6ElWIidc6QFDv4hSgToVnC/iU62wDpTRBni7HYxQrIFVI54WkG9c
         yTBvnfoDjpi7j+b4QedAj6LL4vb0KEtuVPl7Ir6ZN7Eiws7fBb+yXnEULe6ZQ+bTztPR
         s9Ew==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of locust@mailbox.org designates 80.241.56.171 as permitted sender) smtp.mailfrom=locust@mailbox.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741846270; x=1742451070;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:from:message-id
         :date:references:in-reply-to:subject:cc:to:delivered-to:x-beenthere
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+8chCh0AROD2GN6qZmLSdwPLQHn/9v0TzhWh7RZnag0=;
        b=Ufh2DcZ1ri6SeBq4llMKrP9xz5Bl7vCqISoQAr/7duooog0QZTL20r9skrDFzg+gM2
         Rc7Fz414xWCWEWmlpSmGkc1xXpR4Hmnk3OiqqdM7kZywbTGT2Y2WErIGriKSHDejtxue
         SpSjsHRduM9qK1HdzDu9/ocD7NXBvnMvrKZcg7T07CUstSHgmT+JC8L8JShPSkZRXGxI
         HJ40CfQ/iOcEzIGz1MiUmtt6dXBTnAIP4RvEMbpg7NxSD8FMCMuaOneCLhkEMAa22v70
         O3gdQSCuX+1aQPwsZ2fvZV+V71TJP9fivTVi5Z2FxOOGy9rlAElID5Y60yvfL5oVAf6f
         L6ZQ==
X-Forwarded-Encrypted: i=2; AJvYcCXUL+rHEEnTuf6F9G8RdwEQ6uKoumpLJGsX2dkGwhicPUj2QvlaFeAPN5avqFMSTa9QsTRTPQ==@lfdr.de
X-Gm-Message-State: AOJu0YwG7jVLaG+DiofYtbU1KSdKHQNLugQSCNuNRKZbi21CUfq+urEG
	a1jFx+hZraOgFZj7qcR5T2inRWmqKI9Aq7d88n56jAB46SpSdzwvPtoPmcCieGM=
X-Google-Smtp-Source: AGHT+IHZpT2RpFaVyXK0GoFaas0A7ub1bAjlnp2pAbAVdSwc/TaKR3MGBOfzKn7pVccIF6BT8PhFow==
X-Received: by 2002:a05:622a:199d:b0:476:aead:8029 with SMTP id d75a77b69052e-476ba8c4975mr19942911cf.7.1741846269941;
        Wed, 12 Mar 2025 23:11:09 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: blinux-list@redhat.com; h=Adn5yVGSZjvoqRG76G0nJadgclIQJnOP9p8svLTnjATZ0euHug==
Received: by 2002:ac8:4f4d:0:b0:476:6eec:3aa5 with SMTP id d75a77b69052e-476b7c3fbecls11160301cf.0.-pod-prod-00-us;
 Wed, 12 Mar 2025 23:11:08 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVvxb4esFXfF54DuvCscxujYiKmFFFuLnmwzyAGog7MMLRRNDxEM8gSlxPUeKKrf/wH5EZLCOkdppYxaQ==@gapps.redhat.com
X-Received: by 2002:a05:622a:40a:b0:476:afa6:3218 with SMTP id d75a77b69052e-476ba915822mr23472261cf.14.1741846268593;
        Wed, 12 Mar 2025 23:11:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1741846268; cv=none;
        d=google.com; s=arc-20240605;
        b=XMJA3z/oCKygil0JDLa5Ub89b8z0z0p3tMPaw081dvPR6z49Pi42S2h59b0meAqmqy
         aCDwEWS96zfJHK5O6tKnl/dhkWnd9MVfwhAvMaMlFpolLZb/rSoiB+khIhhH4pWiQrwP
         xlKW8PVaXS1hdSpVzOkWgUwU8t/CSajSjAqMpJzbom5Bw7FTvh0pFIXr0KN7DfR/buAD
         K/Cl8VCFYtG+etuDUU5wqikP0/UbHGNGuE9/yhhODvbY0YgbLmAjiChUoeo83sp1bs9S
         BoT82QS1P26cs3nh72zq5iql/BskHgWdwQNDXlu35wxRqN3v4vOphWv8Ll4Ecn0C5Rff
         WsEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=from:message-id:date:references:in-reply-to:subject:cc:to
         :delivered-to;
        bh=FhQmaux2PQgez8is4npyRyVl+/+vQWc7dVztBCNKo8o=;
        fh=MKSjK2a+j8J/MMs+7ZnEtPuhC2U4Wc40eWORFMEeKg8=;
        b=aWbjlvsex06H2v0hl2XYeRsM8wFdBvSpNRvO7xGm3nVVnkQp75HB3lidlZeT4k8Sw1
         4ElyV4Hy7Nesb0XGloHJsdGQ2tU/i7J4YavB/MV44JldAUTcPAKw7JRWWNgsST0oG4gR
         oBAI78mZueQ78q7j72T8IEI8tyipMO6xrN07vRjyqssrd0Aut1tWCAxh4WAv+xw4js73
         B/9ZDREkH3OdzX5Ntfr3GcCU2+mTtjUpuhvXp6IvAxt7kuLyBBv8XuY9fMxIM+vBe90W
         8FlRheTAXv29DhnbymVYNbZ2VlcXIhqvrRBUcB/LDObmzozX7wzJejoDc4olaHsQ+88f
         gI/w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of locust@mailbox.org designates 80.241.56.171 as permitted sender) smtp.mailfrom=locust@mailbox.org
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-476bb819df7si9084891cf.413.2025.03.12.23.11.08
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Mar 2025 23:11:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of locust@mailbox.org designates 80.241.56.171 as permitted sender) client-ip=80.241.56.171;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-587-jXfmRvAUPiSD4fTBy8UjeA-1; Thu,
 13 Mar 2025 02:11:07 -0400
X-MC-Unique: jXfmRvAUPiSD4fTBy8UjeA-1
X-Mimecast-MFC-AGG-ID: jXfmRvAUPiSD4fTBy8UjeA_1741846266
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 81FCA180087D
	for <blinux-list@gapps.redhat.com>; Thu, 13 Mar 2025 06:11:06 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 7E1C6180174E; Thu, 13 Mar 2025 06:11:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7B2731801747
	for <blinux-list@redhat.com>; Thu, 13 Mar 2025 06:11:06 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 073CF19560AB
	for <blinux-list@redhat.com>; Thu, 13 Mar 2025 06:11:06 +0000 (UTC)
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org
 [80.241.56.171]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-591-HuG7JlU2OIO7KIWdpmjBxQ-1; Thu, 13 Mar 2025 02:11:02 -0400
X-MC-Unique: HuG7JlU2OIO7KIWdpmjBxQ-1
X-Mimecast-MFC-AGG-ID: HuG7JlU2OIO7KIWdpmjBxQ_1741846261
Received: from smtp1.mailbox.org (smtp1.mailbox.org [10.196.197.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4ZCxlY43zHz9tLJ;
	Thu, 13 Mar 2025 07:04:09 +0100 (CET)
To: "Karen Lewellen" <klewellen@shellworld.net>,"Chime Hart" <chime@hubert-humphrey.com>
Cc: "Linux for blind general discussion" <blinux-list@redhat.com>
Subject: Re: youtube dlp?
In-Reply-To: Your message of Wed, 12 Mar 2025 04:24:44 -0400 (EDT)
	<Pine.LNX.4.64.2503120421580.3555895@users.shellworld.net>
References: <Pine.LNX.4.64.2503112329560.3552976@users.shellworld.net>
 <35d3aae3-ad01-1f78-a426-dec2332a8f5a@hubert-humphrey.com>
 <Pine.LNX.4.64.2503120105090.3554148@users.shellworld.net>
 <cec0f749-6186-13ba-0d9d-b08e9758f5c2@hubert-humphrey.com> <Pine.LNX.4.64.2503120421580.3555895@users.shellworld.net>
Date: Thu, 13 Mar 2025 07:04:07 +0100
Message-Id: <E1tsbfr-000617-2F@lapcust>
From: "'Artur Rutkowski' via blinux-list@redhat.com" <blinux-list@redhat.com>
X-MBO-RS-ID: 44de6caeb22abd6f2c4
X-MBO-RS-META: dshm1gu8cebu9ci4oeczppxx618pwdsc
X-Mimecast-MFC-PROC-ID: q5AHMBa49m97QUlmRNROEqXNCsP5HjqcYXFRVJBelJU_1741846261
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-Spam-Score: 2
X-Mimecast-MFC-PROC-ID: P9rE4u75h_u9JgJaKJ6IGu8lvg1UuZa9OCnt8TirM2E_1741846266
X-Mimecast-Originator: mailbox.org
content-type: text/plain; charset="UTF-8"; x-default=true
X-Original-Sender: locust@mailbox.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of locust@mailbox.org designates 80.241.56.171 as permitted sender) smtp.mailfrom=locust@mailbox.org
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

Hi Karen,

Every help on every program can be found after typing progname --help. If you did this on yt-dlp you would see the following:

To extract audio from video after download use -x option. Additonally you can use --audio-format and --audio-quality options to specify format and quality. Format can be best, mp3, wav, flac, alac, opus and some more. Audio quality
is a number between 0 meaning the best, and 10 meaning the worst. The yt-dlp chooses the best quality automatically.

All other information can be found at https://github.com/yt-dlp/yt-dlp#README. The program is downloader so it has no other options for watching without downloading unless you combine it with mpv player.

Greetings.
Artur Rutkowski
https://www.probka.eu

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

