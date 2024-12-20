Return-Path: <blinux-list+bncBC3NDNGRUAMRBMEFS65QMGQEDHCESOY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A46A9F9A1C
	for <lists+blinux-list@lfdr.de>; Fri, 20 Dec 2024 20:17:06 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d8f94518c9sf43693736d6.1
        for <lists+blinux-list@lfdr.de>; Fri, 20 Dec 2024 11:17:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1734722225; cv=pass;
        d=google.com; s=arc-20240605;
        b=Xgqe7X+TkTqLhJDP/B5x+Gz923K9OETL6g8j4U4qdAYlqaTuVRylFCaFUQ9/fsU5tO
         VFoMse0SCNJI/+vKZjldN1dqh8ti2mxol1aHz6Y6eQsBgyzM3LJre7+ND+heKJK3LbY1
         r5qZtwQfgGwcm77TJ1txIj+h/6dZ+8f5WTcyLWgQHLesjGIbev1LME25lk/s5PaT9EbT
         SSQt0R92GdQCUJEp0NesnmnzId05oGKjh2IUFlPFuJiQR4Y+da0w7oCkeWLa2hruFiFk
         kTeuQW6WCzryRKEgxgOVVqVr88LzjYcYldwmL4VAlROvysTZwa7XBqQb13E2L6G+Hd+r
         xWHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:feedback-id:delivered-to;
        bh=RQtGN/kfaXOf8QXXgh3jR7LCYP26bG6RZu/rkP+Gm64=;
        fh=MgHFUsge9iMAsgv31dXEv2PPgfnY84XNhGPY4Ql4RrE=;
        b=X9+HjXLgG/EsPyiviQk5/tTvYHyI5/iWZuhoog2qcMIMKz9eECXnQWGbqQNWmErUvD
         ywiX5ArA9B+xWGJhaljtzcfhzVEFXn5x5vAmuwy5aYwcH1xXcqEQM7299oZ6/BKKsmyo
         1GohW2ASde7iuLnI06Leb1a32MLJAh20KUFWPpLHpo2BfIfd65dW86YfEgQHVkqtXZNj
         nzUREvLPhkOVdyXFq5Xmuwwqh4GBEh4y3lW7eFz7j43rkd8v8QIAiyLH44hYuHkERI5m
         DPzK/wHn0nr9YFjdV7tnMsL1BWj+zcDkbt2fd2pkH0HY4b51Si4MfxdalpkcOTzarhKX
         X+cQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.146 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734722225; x=1735327025;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:feedback-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RQtGN/kfaXOf8QXXgh3jR7LCYP26bG6RZu/rkP+Gm64=;
        b=NrbvzFGh2Pm0hoAk8hrmpIsyhN74GUlnIc+7jsDx2/YfD6vmxux7O7Z7QQXLfsFmz8
         O1rSCaZiIItllxtnFFGW5JJUIE7wJUhpp+u3ElVFUsmmVMUJHX17HTItqy3cg0PL2oeB
         Cyaodqds6W7OZ37H7cadAqYas9ugxN/8eBg1/jZ6uDcqMRu7138uk4O1HrQsaIauaMK/
         T04bzd+okPGKKtXVPRkfcBdUpuuAO5GP1ENv50gHtC3v/ry1jxKlQAj8SoKgPKt6U+H1
         Re+HUvklvtYnmsRPnrO7dYRzPtP6JKLMPKBKPacYi6to7eTcIGMZpwjJpgo0ReTfl5fN
         FXxg==
X-Forwarded-Encrypted: i=2; AJvYcCUESlaCUg0zOGGZgN9y1JKD632d/6Jih4wGv4lJzpkiLB24HDMfqO8CcmrQjCV+srxQoN8Ong==@lfdr.de
X-Gm-Message-State: AOJu0YwFv9Goi1Oaxicfef+edwW5F4xTKaMciSN4HFIYZxs0YPEEadzp
	vuRDZG+qkIDVGHEvhakXTNLB+iNfr3CxLa0njSNk913OMBAd87JXUOg9eqgKfbQ=
X-Google-Smtp-Source: AGHT+IEomDIx7EfxgPEKz7PKBc/BgN7srYb5gWa7sKJu26pZlhzRWH21RC29eET0h6HzgEs8UJ4l7w==
X-Received: by 2002:a05:6214:c6e:b0:6d8:ab3c:5e8 with SMTP id 6a1803df08f44-6dd2335ddbfmr57623146d6.29.1734722224882;
        Fri, 20 Dec 2024 11:17:04 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:c682:0:b0:6d9:1375:552e with SMTP id 6a1803df08f44-6dd153bb679ls26034566d6.0.-pod-prod-06-us;
 Fri, 20 Dec 2024 11:17:03 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVy7zVF6VyccnGp3gso+F/hVZr0QOSU+mAxxG3gLZwoFoQPQAv7YABbbolnzemqWRk9XlN+f2g03Othbw==@gapps.redhat.com
X-Received: by 2002:a05:6102:9d4:b0:4b2:77df:466f with SMTP id ada2fe7eead31-4b2cc35e27dmr5045620137.8.1734722223420;
        Fri, 20 Dec 2024 11:17:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1734722223; cv=none;
        d=google.com; s=arc-20240605;
        b=hTnKLrAy3R7KSV3zRbKsP7kVdqDRNh7tW5Y7wBThF809QJNfibuBNN4olEmbqYxf9T
         Ig5bLeGmevIOWjTp45/BqEOOAnGQiI9V6akf1LqPV+27d/ehBzWC2TkS8vNzc16FkMf6
         +5L2NxinaTxcmH4q9sJpmCHhok5D4PIMqbLkK0NpSSiFEbThLZIiTZPCRZ/7YIVSx9IN
         cD3jjM2sm3LYlAvVEnZKseu8Zv+wKEWUzqicnPvHE8/Oi7MUuFPA0spHS29Ar5xZ0HDu
         R2qtz0n+5099/Rm6RJsMKJAa7GKBjZKZj1cRZ+80iCH7nMq9UrWYQF38EelJdbRUVUnG
         /uUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:message-id:subject:to:from:date:feedback-id
         :delivered-to;
        bh=1gs1P13risbzTJxQVy0QztvXkf3OFCM9XLr1+DEgL0A=;
        fh=PmA6iCFgUoqrqU6x2M9dR3vZbb+FlLGidi4NLHtSolM=;
        b=GUpDGfMSCQMho49MxRBuZf/XcddZsdK8brDs0YynSWYRZei1W5hi3KtBIpvPcpYrB1
         6Um4C7p5bwIvZybwEc+FBhTUHCbaPxb9EMbYMn2WR5ZrZwQ3/dw69TvB0fas87CJGy+P
         oUvYOulCLzuOET12B48wvljP2JkR2Slu680b0mZp3kDePXuliys6eaak8YZuED7cuSJ7
         4rxoVimVS35VrL8Vd0+ALQXDGnOYkTcGME7cLhYLiOBq1CthiJ0bWaYBTyrOcpt3AHVm
         Z2G2131gH6HyRmUhTnrIshT6jUQmAuBSv93wv6bax4PEBDxhE5gTDaA07OzIjHqDuJWc
         PazQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.146 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id ada2fe7eead31-4b2bfb1d44asi1615994137.249.2024.12.20.11.17.03
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 11:17:03 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.146 as permitted sender) client-ip=202.12.124.146;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-348-XPIZLyqdPV2p7azKdq0urw-1; Fri,
 20 Dec 2024 14:17:01 -0500
X-MC-Unique: XPIZLyqdPV2p7azKdq0urw-1
X-Mimecast-MFC-AGG-ID: XPIZLyqdPV2p7azKdq0urw
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A707819560B0
	for <blinux-list@gapps.redhat.com>; Fri, 20 Dec 2024 19:17:00 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id A1DE7195609D; Fri, 20 Dec 2024 19:17:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9E79A195608A
	for <blinux-list@redhat.com>; Fri, 20 Dec 2024 19:17:00 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E630119560B4
	for <blinux-list@redhat.com>; Fri, 20 Dec 2024 19:16:59 +0000 (UTC)
Received: from fout-b3-smtp.messagingengine.com
 (fout-b3-smtp.messagingengine.com [202.12.124.146]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-450-P2xNVjLXMTyOZD3OJDvDVg-1; Fri, 20 Dec 2024 14:16:57 -0500
X-MC-Unique: P2xNVjLXMTyOZD3OJDvDVg-1
X-Mimecast-MFC-AGG-ID: P2xNVjLXMTyOZD3OJDvDVg
Received: from phl-compute-03.internal (phl-compute-03.phl.internal [10.202.2.43])
	by mailfout.stl.internal (Postfix) with ESMTP id B8499114009F
	for <blinux-list@redhat.com>; Fri, 20 Dec 2024 14:16:56 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-03.internal (MEProxy); Fri, 20 Dec 2024 14:16:56 -0500
X-ME-Sender: <xms:qMJlZ9ObwJPG6ePUYLacxJ50tITPTO0H4mqfEuV_fWch6qIk3hvrNA>
    <xme:qMJlZ_8GfN2fwtTqPSbzDw_OtFedY333SMHVtwmsyg5DveYvDg4z8qAJhOuMMZSyU
    3C9A1UujMcuxVr3NAU>
X-ME-Received: <xmr:qMJlZ8RsjEgnQds3hTyoMknBzGLaYY7OwCIis258SajzpJ1aps1g52UTtkdD4MgPfkMh_BYru_zTNYXSLrLcsFtI0BpYEWjc1tQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddruddtvddguddvtdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
    hnthhsucdlqddutddtmdenucfjughrpeffhffvuffkgggtsehttdertddttddvnecuhfhr
    ohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvg
    ihrdgtohhmqeenucggtffrrghtthgvrhhnpeejffffudejleeuffeivedtieettedtkefg
    gfekvdeujeetkedtheefhffhvdetkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrh
    grmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgt
    ohhmpdhnsggprhgtphhtthhopedupdhmohguvgepshhmthhpohhuthdprhgtphhtthhope
    gslhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomh
X-ME-Proxy: <xmx:qMJlZ5vTFY8UmrTKtekStDao8PXsaKNSHwIQhgSsTCvttmXTo_ImIw>
    <xmx:qMJlZ1cfkEGawnr3GNpIU_hlNn6dnmyPId0KXyLLPwRWgVuJPAmjrA>
    <xmx:qMJlZ10eoD2J8iKTqf_dsYAiPToYPwvfuqBWqC-XXi-BRH3vHG05lA>
    <xmx:qMJlZx8Nzi7126obtrP_WaIRhhOkiIepb2r-vH4waGSnlB5MXOxN6Q>
    <xmx:qMJlZ1GX-_V4QmpuhbGb2aQSpxUkJZ05YuTCJUAt0thlOUAYJyl41tt4>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <blinux-list@redhat.com>; Fri, 20 Dec 2024 14:16:55 -0500 (EST)
Date: Fri, 20 Dec 2024 11:16:53 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Please Examin My February 1 Speakup-Tools Bug
Message-ID: <cde683b2-89d0-8df1-eb2c-619c683680b4@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: 5jqU3hgpq5gyzcxlpdYIMsueUXrgH7AQ_Vbjj9gxmyk_1734722216
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: -VtFQ7qRUiFIl1Ei8vZaZqlGT51ucZM--G8ys8BZ3Dw_1734722220
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 202.12.124.146 as permitted
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

Hi All: Since I am not sure Samuel reads the Speakup list? In a spirit of the 
season, can you `please look over the following which I submitted earlier this 
year
speakup-tools] [9]/usr/bin/speakupconf: DecTalk Drivers Drop Pitch, Rate, and 
Volume of Speakup `Quite OftenSince Speakup-Tools were an only package I could 
find in Debian SID, however, Samuel, if you think my request should go to 
another package instead, well, `please be my guest.
Back some years ago, Samuel, you looged in remotely-and-worked on a flush 
issue, where there was a 4second delay, as flush was set at 4thousand instead 
of 10. However, still after booting, I must run either of these 2 aliases to 
fix this
flush:   aliased to sudo echo '10' | sudo tee 
/sys/accessibility/speakup/dectlk/flush_time
or
rd:      aliased to sudo /sbin/modprobe  -r speakup_dectlk; sudo 
/usr/sbin/modprobe  speakup_dectlk; sudo cp /usr/local/bin/characters 
/sys/accessibility/speakup/i18n/; sudo echo '10' | sudo tee
/sys/accessibility/speakup/dectlk/flush_time
Somehow that last one didn't get on a single line, but at least "rd" will let 
me hear charactors the way I would like. I also run
an alias of "inflection
sudo echo "[:dv pr 250]" [:dv sr 50]>> /sys/accessibility/speakup/synth_direct
But once drops happen, that "inflection" alias must be run againAlso, must 
press each of the insert keys once to restore  my settings.
Back on September 20, 2022 Greg posted a rather comprehensive analysis either 
on the Speakup list or privately, which I still have.
Samuel, you may very well be right that some of this may be involved with 
Caps-Start or stop. But really, there are times I have 2 drops in 30seconds. At 
some future time I could record this to prove how anoying this would be. Thanks 
so much in advance
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

