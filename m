Return-Path: <blinux-list+bncBC3NDNGRUAMRBU6I6S6QMGQEY3T5W7Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F91AA432B9
	for <lists+blinux-list@lfdr.de>; Tue, 25 Feb 2025 03:00:53 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e67c58f0f7sf51742286d6.3
        for <lists+blinux-list@lfdr.de>; Mon, 24 Feb 2025 18:00:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740448852; cv=pass;
        d=google.com; s=arc-20240605;
        b=O6xejk/Z1d4+Vugr2vjaHaUJSk6FuWzwbjfUapT6hYYkRJ9EMCervnjs/8duaXqXYa
         2C4Q5HGPcc6c3JNoiy+UOiQsMk7IFjLu4aMiGamoGr/KAgyz49+rohrk1gelVDQPVNT2
         hV6L7Vde8fWz7RNm76A9NzD7+sPFe3RPbNPcxmKMTl+jTZbeNEE+lCXdc4kXI9bxs484
         74S3eJkqV1Cf571vq9Yt5QNJvs+E3zBxuKqSd0cWYxPKE2MUDmA/oLbXDcN8iA4pSNNe
         z6MowiaYb7tQMtq5GfanhqB+Q/KDL8quHXfYzsQdLttSBrmUdntbsh1HXAL9ZPDem59n
         Nvzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=qnEvsdFN/KH//pwsYt2Njdbfl/a95LeIaSIQsDpBzlw=;
        fh=BQGB/gzOv4JrY65ZHmACNo9xj7s4cgIR1y29pH4RHtE=;
        b=jJsAL8mDDSgD4hLdWujdu7pUw6vbUGWqo+KiL2AtM8ilzYvJzDarYrPj28+uzkZtrI
         TgSkHlw+1sDSeNzfA6cIrVsFdQuyuZ31PXblNuNGoRZOUbOXb4nY3movqjU6eL6hNPCR
         zjhfVRnS+CMPw+QNHeSagy6kbCkOys9sUWgmR9EXZdhdeGcNVzrFI/cl2RjFpqMZucn8
         VLk5LNFO/5iWsqHNCv6jVX6M6kBRumwZop3KnAbTA/gW77PczG7kTiCcwg2ZPb/+HaGP
         7+tqyvVJOqVQxKN6xWNhWkjIihARZMclQvl1ZPc3u6YlayElBsfEfNTCIIW2QiBSHCDs
         3xhQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740448852; x=1741053652;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qnEvsdFN/KH//pwsYt2Njdbfl/a95LeIaSIQsDpBzlw=;
        b=RhFpCNJHbFohKQ4BWzBoRzOHfcOrBw2oOyA/6nTqfe+ByS4lDSBoA1ggdQJZRwsdAY
         koFXWEkmJx046a5YtacL1T4lJ6KIGmA6WsjzdhHV4RWb9eaTs6A9SSBGEWAdhcK64LDt
         mYO0NWIo30hIUA+tHeDJTSjgl91h+LhL9LSXO7ZyUWwY5lR6u0f8MptQekebEYtYUsy6
         Z7SEKtFyCoMjVbIxomIgIdudtfMmYnTsNQY8OiDxcHq6gpswMHWix7I6JG0inatBynuD
         KW9iKnqZ41WYKyQ4Z2mxXI5FAx6fk7/f+JpugPOo8v7+m2Gd2/eac7rmnGSmRqsz1Dsd
         NKQQ==
X-Forwarded-Encrypted: i=2; AJvYcCU5eFPbHfOsAp2YiR9M3TgFz4R/IJnI0O/bOl6P8qXMhhFraaa+LNW+pTCAj+3lUiLnWhZUJg==@lfdr.de
X-Gm-Message-State: AOJu0Yz90NDyLwyZ81lDGdzLqKxqnOdOAJJJ3S/34fnXgR0pHwSbSnyD
	rV66gMQWZA1gLAfGQozXLdO3O/Eb4Sj72YrE0UqBMf5eNo6A1PL8oNmZVNTmxV0=
X-Google-Smtp-Source: AGHT+IHljzkkktWiAlgXmK8zDcmvU/KLRjP3Z4rsv6llb45pHa1NZU8HMtG3RdyoIyMUACmwvug+gA==
X-Received: by 2002:a05:6214:29e8:b0:6d4:b1e:5418 with SMTP id 6a1803df08f44-6e6ae995a51mr211925096d6.33.1740448851878;
        Mon, 24 Feb 2025 18:00:51 -0800 (PST)
X-BeenThere: blinux-list@redhat.com; h=Adn5yVEOFj9WzD9GfNcGwos1n36qkpuBE6hGAJkeJ1RCHbP9jg==
Received: by 2002:a05:6214:1fc7:b0:6d9:9c5:3874 with SMTP id
 6a1803df08f44-6e6a2085757ls61527096d6.0.-pod-prod-08-us; Mon, 24 Feb 2025
 18:00:50 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVjqJj345/Ex0rmSMBpqnP7gazV641q32ZCHgTF9/r0luzAfWtU7s+XnFmbpQQUx/aAqKt/vwLloKAtzA==@gapps.redhat.com
X-Received: by 2002:a05:6102:548d:b0:4bc:18aa:51b1 with SMTP id ada2fe7eead31-4bfc01b27dfmr8217356137.21.1740448850355;
        Mon, 24 Feb 2025 18:00:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740448850; cv=none;
        d=google.com; s=arc-20240605;
        b=hlMzBNxqCOimoMfAEjAQ5wWzr1+fNxAa5lcdW9Lhf1YHiiMy7B7IIiOIMBpPTwW0Sv
         ZTiVQAZ5McGFgthfKbg9+CK9R96FY3f1Zy+QthWmL4LDtL3XjXKDw/dYrDw+n5l/OtFw
         AzyKb0abppC4k4S+JUEWZ7i9eeSGKBTHzPsW5eqIVO+p4y05bMFHNWVRPwDLrDO4FcAq
         ZkU6ypja0hinHzykJ15VuyHUp2sPBzr562murYhkx5iNhy8rNnVGllTHK15FYU06C6vB
         GXLTkBLZWOOJlbDrwDdYHjPkVQFDUX6xpafAKfaqNmziWNCpz2IaXA2wR110R7HZd3xi
         DNow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=HtUVSxNyd3h8mrERdqYRG/y6DoJi9PXrtUbav8bm4+4=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=VD+vc/Bp3HIgrnagYqLfEO8IL3zXH0ZemHZu561W0u642tBffp3IoytpQoqYdcFkHo
         UkStxntDIhvhq9eylNp4fJ3Y9Wn/mcIcEz+6+r63Ok2ctlwQ6QsWQlabjmsO22ivwj5N
         d6duzftRI6KBs8Ndcoui73HroztjKwvhaIBWdF1llA7153y8v5jFfI4ICr7H0a2U2Kz1
         32vYKPK5pDoVu/YMPHbzRij0OyFhVqdBAw39MscvLW4R+6yGRDsP5nt3MM6PyoLg8rbD
         Ouh3x51lciXauuWeVfeyBddW9IoeVUFKDQhKRxeEyjAhi+rLS8X+E5RifbVcwPOhoa5y
         qwkA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id ada2fe7eead31-4c00c6d5f41si93878137.287.2025.02.24.18.00.50
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2025 18:00:50 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted sender) client-ip=103.168.172.158;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-558-fqWXmCpUNmmOjQYXm2BGxQ-1; Mon,
 24 Feb 2025 21:00:48 -0500
X-MC-Unique: fqWXmCpUNmmOjQYXm2BGxQ-1
X-Mimecast-MFC-AGG-ID: fqWXmCpUNmmOjQYXm2BGxQ_1740448848
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 12C6B1800877
	for <blinux-list@gapps.redhat.com>; Tue, 25 Feb 2025 02:00:48 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 0D9E9180035F; Tue, 25 Feb 2025 02:00:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0AD1B1800357
	for <blinux-list@redhat.com>; Tue, 25 Feb 2025 02:00:47 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5FD2119560BC
	for <blinux-list@redhat.com>; Tue, 25 Feb 2025 02:00:47 +0000 (UTC)
Received: from fhigh-a7-smtp.messagingengine.com
 (fhigh-a7-smtp.messagingengine.com [103.168.172.158]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-102-5xnl26M8Ot289t_0sn8MZw-1; Mon, 24 Feb 2025 21:00:41 -0500
X-MC-Unique: 5xnl26M8Ot289t_0sn8MZw-1
X-Mimecast-MFC-AGG-ID: 5xnl26M8Ot289t_0sn8MZw_1740448840
Received: from phl-compute-02.internal (phl-compute-02.phl.internal [10.202.2.42])
	by mailfhigh.phl.internal (Postfix) with ESMTP id DEF8D114020E;
	Mon, 24 Feb 2025 21:00:40 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-02.internal (MEProxy); Mon, 24 Feb 2025 21:00:40 -0500
X-ME-Sender: <xms:SCS9Z1x2gLFR5wCklthYZ8NP2PX94TguKttJcZltpE7G0i08KGN6fQ>
    <xme:SCS9Z1Qpzyrc1MlflvvSCgWXyJl0mcQe7SglUE3UUyZ6-TL9_KjCkc31nXEywC5n0
    LXBi5qBe_KdmozTrXM>
X-ME-Received: <xmr:SCS9Z_VoJkJNX2LSiMOQgV4Asjb67gXz22SWjoEYt9C3Eh8KPN2WSBYdAcRaaAr4ZUBz6AIWZwmxN-NinVHgBbgIA7fb3TnW4PA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdektdegvdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
    hnthhsucdlqddutddtmdenucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvden
    ucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmph
    hhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeei
    vdekkedvteeuveeufeeffffffeffledufedtnecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgv
    hidrtghomhdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhrtghpth
    htohepkhhlvgifvghllhgvnhesshhhvghllhifohhrlhgurdhnvghtpdhrtghpthhtohep
    sghlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhm
X-ME-Proxy: <xmx:SCS9Z3g6Zinl38xl4KA1PZykJa8leZ-MA4zEy__2VaZKNKS2R_kKtQ>
    <xmx:SCS9Z3B58quAZQt0ZZzq44DhRW3zjZqsr7wm8Yd4eOMpUd5z9dWpKQ>
    <xmx:SCS9ZwLxfqOIPt2T0I_tkkgpGrCEcI1Zv9MvjcD5y7vj5XONzs6OwQ>
    <xmx:SCS9Z2D7CQbKdu06S4WQkOwdZiTHCmxuxrmPDJhZjsXazHcvKQ09iw>
    <xmx:SCS9Z6NEqZ1zQvpgI02QQCzdEM3yQx99q2JTpG6rORzp4w3QKhm7kNBN>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 24 Feb 2025 21:00:40 -0500 (EST)
Date: Mon, 24 Feb 2025 18:00:38 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Karen Lewellen <klewellen@shellworld.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Linux command line and youtube links?
In-Reply-To: <Pine.LNX.4.64.2502242011040.2984313@users.shellworld.net>
Message-ID: <c2631977-01f6-0918-c455-7eec1264a3cd@hubert-humphrey.com>
References: <Pine.LNX.4.64.2502241937140.2983544@users.shellworld.net> <5fe25c77-e36b-c8e2-d327-fd1602f0dc7a@hubert-humphrey.com> <Pine.LNX.4.64.2502242011040.2984313@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: 350d3vQEZaWg5c_4gaAwP0pAGxMeAHhZZJ7C4-g5Clg_1740448840
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 2RlMxrwH93E_sttVLlKdwfWIs9DPSSSvIUFEh6jgsr0_1740448848
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted
 sender) smtp.mailfrom=chime@hubert-humphrey.com
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

Hi Karen: Youtube-viewer would help if you didn't have an exact link. O-and-1 
more tool I want to mention-and-that is "urlview" There are times just looking 
over a page will not show valid audio/video links, but again feeding a page 
through urlview is practicly like examining a source-code but urlview saves 
most of the heartache. And now here are my L Y N X external entries
KEYMAP:,:EXTERN_PAGE           # Run external program with current page
KEYMAP:.:EXTERN_LINK           # Run external program with current link
EXTERNAL_MENU:http:mpv:/usr/bin/mpv --no-video --really-quiet %s:TRUE
EXTERNAL_MENU:http:yt-dlp:/usr/local/bin/yt-dlp -o '%(title)s.%(ext)s' %s:TRUE "--prefer-mp4"
EXTERNAL_MENU:http:youtube-viewer/custom:yv-custom  %s:TRUE "--prefer-mp4"
EXTERNAL_MENU:http:urlview:lynx -cfg /home/chime/lynx.cfg -source -base  %s |urlview -:TRUE
#EXTERNAL_MENU:http:reader:rdrview --disable-sandbox  -T title -B "lynx -cfg  /home/chime/lynx.cfg" '%s':TRUE
EXTERNAL_MENU:http:reader:rdrview --disable-sandbox -T title -B "lynx -cfg /home/chime/lynx.cfg -assume_charset=utf-8" '%s':TRUE
EXTERNAL_MENU:http:safari-spoof:lynx -cfg /home/chime/lynx.cfg -useragent="Safari" %s:TRUE
Back again live: Those last couple are useing rdrview to hopefully just show an 
article without all those tool-bars. I also had to do some editing, as I cannot 
seem to get more than 76columns on a line in Alpine.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

