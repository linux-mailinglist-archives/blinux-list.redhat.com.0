Return-Path: <blinux-list+bncBCVPTHE7K4IN3P4ZVMDBUBBVPCMSY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 2002E7FC828
	for <lists+blinux-list@lfdr.de>; Tue, 28 Nov 2023 22:47:11 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-67a3bbd9510sf36373036d6.1
        for <lists+blinux-list@lfdr.de>; Tue, 28 Nov 2023 13:47:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701208030; x=1701812830;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FEQ+MBB6L6OrWlYlFVhxYSqwev3iXcjhKlKj+r7wbXs=;
        b=ibaLDwXwdilJ6XtZkC+d4aej9JWj3RsiJL2BKsYyoDTiEaKiqzi7unf7UxbyJSUYeO
         k1xoAX3dvPdo385U1MVe9JjIuxT42a9ZnusWm7LeN68gtQtbszu9i0NT02OSSJ5KgW3v
         Ijm4I//srBuP08rsHqBOdRQZmnzlSKdNy7oMZBAkz/z+MwvM3PupfobwrIkkDXIn7I1Q
         vVQ1sUG2vN2c/Y1/+F7cGcUa4pWYev4ct9xJ+bmu+j8YmjTDK3BTlJcUBvBh2rOz7O+T
         7JMJeJT9PxLt8T/esY7AjsqHVyHhF1VMeqIaW+W+QDmeMR20026986lsuXzYy6nsWjyj
         e6ig==
X-Gm-Message-State: AOJu0Yx2XTN8pWLr8Rng1gG5eLFdAqGEAnKoLV+XIFhmn06g42k1BVzO
	j+rjYjVPcu5vUMnRUk3205uNtw==
X-Google-Smtp-Source: AGHT+IFinFNWVv3DHFc1T8HAzdK/8JJTXsFtYFGzWymikF656wzQPqTHH7i8k6958MsD+NJECYu4/A==
X-Received: by 2002:a05:6214:16d:b0:67a:287c:6c6c with SMTP id y13-20020a056214016d00b0067a287c6c6cmr14296600qvs.63.1701208030121;
        Tue, 28 Nov 2023 13:47:10 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:fe49:0:b0:679:e68a:ed80 with SMTP id u9-20020a0cfe49000000b00679e68aed80ls1090427qvs.2.-pod-prod-02-us;
 Tue, 28 Nov 2023 13:47:09 -0800 (PST)
X-Received: by 2002:a05:6214:4a50:b0:67a:68e2:aed with SMTP id ph16-20020a0562144a5000b0067a68e20aedmr67237qvb.1.1701208029545;
        Tue, 28 Nov 2023 13:47:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701208029; cv=none;
        d=google.com; s=arc-20160816;
        b=vfigHprAMe7eSCK/9kn42RH15G3TPQRPvY1DupN3OehYQpmqUHO6imakcGFmm/PgpX
         jukHMn9PakhHBoC4BVwTzFt71AynCZC6CcoHofjzDQ4eoX592dj85Ubgq/hvnkpGcFMx
         Etb3NVCJxERP0PIlg20gmXhGdD3ZoSxjcBIAtcEgkHLtWPG348VScU2jx7jgetbP08zR
         dJXDRkJ1SFFJZ2ES8Ox6rlx1Ja2TR6/yLsSrAD0AEvV4bE5m67RcYZKpWigYNonvvu6h
         HjTAwzcAA/VklN9sW6zYMnrHwxMEzSw2tu+CnSnaoVDPvPRDx7sEjSX751d5Pkb1l43Y
         gkRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=FEQ+MBB6L6OrWlYlFVhxYSqwev3iXcjhKlKj+r7wbXs=;
        fh=rS7V2DSEK9k/UBcijMAlx6f4Jf/rBARn/SL7RUptQDc=;
        b=iAjNB+eNQAu1hpeCphYlno30xaBNwttazzNbZ/+v393XuAAiigsGf60Dlj0Uq5uBb1
         OSVQsZawdRnjYete6ndkF6O0BrYr6KZf/64kTWK2xuYX68d6YFb2h5agbtt+2tZ5yzTa
         8gAfeC5C06kz7T5GdydVxCXoziq6hG01h7eI1/KUFD1RsGqJ1CzsLuC7Y7vgmF0VzsTM
         psalrQ2LrOi5jLiavoQrfrhc1ynZqVp0T/ds7KbtX30fhqejG/xN9SD5paptbVbuKt3Y
         dgCfmIOyEswxoiXIZaDf3a66fFOOBgGKXna/b1rdqk2TgZa7PN4OZN65dUatTzou881V
         JkNg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id fv10-20020a056214240a00b0067a1c7eff32si10279351qvb.119.2023.11.28.13.47.09
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 13:47:09 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-580-bWgI2nh_NkOHeYd4DB7bgg-1; Tue, 28 Nov 2023 16:47:08 -0500
X-MC-Unique: bWgI2nh_NkOHeYd4DB7bgg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C95FE185A780
	for <blinux-list@gapps.redhat.com>; Tue, 28 Nov 2023 21:47:07 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id C6AA6492BFC; Tue, 28 Nov 2023 21:47:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BF620492BFA
	for <blinux-list@redhat.com>; Tue, 28 Nov 2023 21:47:07 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A11A7101A529
	for <blinux-list@redhat.com>; Tue, 28 Nov 2023 21:47:07 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-438-gjESkog9OFqhdvF5qnqKSQ-1; Tue,
 28 Nov 2023 16:47:05 -0500
X-MC-Unique: gjESkog9OFqhdvF5qnqKSQ-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 40C7440508;
	Tue, 28 Nov 2023 16:47:05 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id ED70A1001B4; Tue, 28 Nov 2023 16:47:04 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id ECE8510008B;
	Tue, 28 Nov 2023 16:47:04 -0500 (EST)
Date: Tue, 28 Nov 2023 16:47:04 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Michael Taboada <michael@michaels.world>
cc: Linux for blind general discussion <blinux-list@redhat.com>, 
    blind_linux_users <discuss@blvuug.org>
Subject: Re: Brave, or new browser projects and  the command line?
In-Reply-To: <ZWZZpkibLrSEpaNp@michaels.world>
Message-ID: <Pine.LNX.4.64.2311281645460.3701114@users.shellworld.net>
References: <Pine.LNX.4.64.2311281559340.3700734@users.shellworld.net>
 <ZWZZpkibLrSEpaNp@michaels.world>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

Understood,
any other new current projects with possibilities?
There was another on their list vigiliti?
No that is misspelled lol.



On Tue, 28 Nov 2023, Michael Taboada wrote:

> Brave is a full gui browser, it's not for the command line. You can grab
> linux builds, however.
>
> -Michael.
>
>
>
>
>
> On Tue, Nov 28, 2023 at 04:04:58PM -0500, Karen lewellen wrote:
>> Hi everyone,
>> what is feeding the question is that the development team at fastmail is 
>> rather stunned that they have dropped access so completely.
>> Future testing with lynx, links, and elinks, is  intended, but they 
>> reference a new browser, brave that I  have been asked to  raise here.
>> does it come with Linux builds currently?
>> If not, is there another new browser perhaps blending some JavaScript 
>> elements like elinks, that might be tested?
>> Thanks for your perspective,
>> Karen
>> 
>> 
>> 
>
> -- 
> Sorry about the test, it's just a me thing.
> Michael Taboada, Creator of Games. Does that make me a god, well, sorta.
> My pgp key: 79BC390E8864CD71305D4DD606CD2197A6EE5ED7
> My website: https://michaels.world
> 2MB website: https://2mb.games
> Don't believe everything you read on the internet. I might not be real, you 
> might not be real, and this email certainly isn't real.
> Sent from my vintage...
> stationary bicycle
>

