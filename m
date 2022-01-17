Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E5C4900A6
	for <lists+blinux-list@lfdr.de>; Mon, 17 Jan 2022 04:58:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642391924;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=y3AX5jpblQiV5OHeZSAg0D7a/0fjg76lPsFE8d9An0w=;
	b=YDmegbWU7kyNp0CLzXPNRWdeUfY+FlRo0xjzftooE7uJmTNjimQkJOd21cRnQ2TucbE6XS
	FePx775+ODQFKu/m5Xl0y2kpi3h67EzsLy9C3LFp6e3MPd1mBCHipeNus3UheYpxrPZv3F
	6v3iRF3XHEwLe6rKww6v7okXTqoEajM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-622-eRm6ZWdNMvOqkGE_w9Sr5g-1; Sun, 16 Jan 2022 22:58:41 -0500
X-MC-Unique: eRm6ZWdNMvOqkGE_w9Sr5g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C4A31835B8C;
	Mon, 17 Jan 2022 03:58:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B69BBE723;
	Mon, 17 Jan 2022 03:58:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A86844BB7C;
	Mon, 17 Jan 2022 03:58:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20H3wT81012397 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 22:58:29 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8EDBD492CA7; Mon, 17 Jan 2022 03:58:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 89E42492CA4
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 03:58:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6E99C3C1BA43
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 03:58:29 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
	[209.85.160.175]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-617-NxZowlGIOk2h4PiD_uyiaQ-1; Sun, 16 Jan 2022 22:58:27 -0500
X-MC-Unique: NxZowlGIOk2h4PiD_uyiaQ-1
Received: by mail-qt1-f175.google.com with SMTP id bp39so17993052qtb.6
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 19:58:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=GYrX8UvNSqbIFWcY70NijbBacwsTt5qdXqm2jqLiBq4=;
	b=PDHDb8LbtClGZBWqiect1tYjT0M+iLrEGIfnjNLc72AiIg8WZvxIANFX20dpRYeSI9
	r6oFiulcVgp+2AuPA7W1E5g9UtLBnjdl5LqGIf6LbKV2w4AK/9LTeL3sGC6uGr8KXbM2
	ADSM90U9PoOD5qBaR5G8YlI0o1SkjwjLFL56ZvcgqstgTQcJ7BQek1VL3+c9L1g7K7mb
	HbHL1cNlmJpnI5bZWQkd5saDxSMjMlvbMLoF8jHgA7FvyopYp+lhvzapTmiW7/T56eiY
	sfy15MNaViKQntQWiGldYmN+IYn0yfSR8dc6E5Yrxm0xdo5BSd6nICxaR4xcIGZx/foS
	EtkQ==
X-Gm-Message-State: AOAM532420E4lAakUiXM2y7x5zX7D1TwGtCNQ5b1pfu33c3tul3AGB2h
	+ugYAgjTu7TFc1WExa2p6fQjN1evIoNEfw==
X-Google-Smtp-Source: ABdhPJzBJpCyeMvuVIv9HmYIZ/VnYzYE87DM9r0MS4SZYEbsyZmxQHfIqyw6kX5d+Ru3Yh8u9YqfUg==
X-Received: by 2002:ac8:590e:: with SMTP id 14mr3942457qty.60.1642391907371;
	Sun, 16 Jan 2022 19:58:27 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id y8sm8355293qtx.74.2022.01.16.19.58.27
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 16 Jan 2022 19:58:27 -0800 (PST)
Message-ID: <ae4dc9d1-d6de-0319-e682-ab489f86fd81@gmail.com>
Date: Sun, 16 Jan 2022 22:58:26 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.0
Subject: Re: looking for accessible music library app
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <84661398-808d-f74c-92a5-6c09203f9480@gmail.com>
	<84DAA8A1-78CE-47C4-A4B5-F717D2DD25DB@icloud.com>
In-Reply-To: <84DAA8A1-78CE-47C4-A4B5-F717D2DD25DB@icloud.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I'm currently using Clementine here. This has library database 
functionality, although like I said, I don't know how that works. It 
does create playlists in a pretty straight-forward way. As for 
organizing my music, I still find the local filesystem to be the best 
method of organization, as it doesn't rely on tags, which can be 
incorrect at times, especially if I get something from a CD that had a 
misspelling in an artist name or similar in CDDB that I didn't catch 
right away. Also, depending on where you get your music, sometimes tags 
can be missing entirely, in which case, your library database usually 
won't even see it, or it will organize it according to unknown artist 
unknown album unknown song, even if the filename is correct. So I 
usually just stick to folder organization, and I can still create 
playlists with exactly the songs I want. Clementine even saves playlists 
in xspf (XML shareable playlist format), which can be played in other 
players fairly easily, and has the added benefit of being able to store 
more details about each song than most other playlist formats, making 
each song provide the same amount of detail in any player that plays it 
via your playlist. This detail can even be used in some players to 
create tags in the song file itself, so that if you do rely on a library 
database rather than just folders and filenames, fixing it once in the 
playlist will sometimes fix it in the library database by fixing the 
file's tags.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

