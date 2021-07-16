Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8C8CE3CB93B
	for <lists+blinux-list@lfdr.de>; Fri, 16 Jul 2021 17:01:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626447701;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8DbDr1yr6R0LIGvWHkCL2AlKKgKR4JK3fTsjz8FHqYM=;
	b=QODFsC+a7DvEVvFyt1DobfxvIGH4HY0t3NZNRcBZBl6gbrcinsyTCwVe4Bo+apolcekfpC
	0wrdtGgotabPGWBXmaNokh/W9V0ldWL2Ec8wcD38oQlp4qAV7B3chIJhDJDkFAtEp4Mtid
	Rir82SvVMVygTXJiN0yIevViNJ2kS8Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-153-gX2S73dIOiCYqzLF0p6a5g-1; Fri, 16 Jul 2021 11:01:39 -0400
X-MC-Unique: gX2S73dIOiCYqzLF0p6a5g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EF0A1100C661;
	Fri, 16 Jul 2021 15:01:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 039E010495AD;
	Fri, 16 Jul 2021 15:01:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7D3704EA2F;
	Fri, 16 Jul 2021 15:01:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16GF0ORN030581 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Jul 2021 11:00:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A182220B6651; Fri, 16 Jul 2021 15:00:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9D0A620B6659
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 15:00:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BA8B1185A794
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 15:00:19 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
	[209.85.219.43]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-223-xfdpCZm9N-uZJFAaw1eqWw-1; Fri, 16 Jul 2021 11:00:17 -0400
X-MC-Unique: xfdpCZm9N-uZJFAaw1eqWw-1
Received: by mail-qv1-f43.google.com with SMTP id c15so4696009qvw.6
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 08:00:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=NaAHbnefTVf9dhhgHPPGkYxxBxlytwSVZ7Rqn6C3U6Q=;
	b=TpkzmGhe/H/PGzTP9i2uIXSJpwdWSHEK9sfwCQpkoKgnHMUmJE0LVKi39YOPKAa26v
	RTALcqUDXIps2BjB5IbYIUrjE+2WkOOIR5E3qKkjHN9zNdGNX37BIeXXjSGw80GuPajW
	SEGhJodxMS9qTHKNQbB7oNZ94u2lS65/5VQW6XUh1ysSbmAy9rDh6Oy21PQhwhanshxp
	B3mWulHQW0lCypMMq/JjOyiTml6wOrMCLx6417RD/M8BqBh1KjQKhJ4gyvFkn1WuSxYJ
	jMQthMxVpABzxi0IH2QJgSyxQSUfSwQ6Gbsfz6PM4zo0sdvpwHvXMUF8liltZx4YSi21
	0O2g==
X-Gm-Message-State: AOAM531Q2oqnhcZEcErAtoc6UcWHR6fP1CHrCN+zl66d86ryEfOEaNBZ
	ZDgRCA6JeNGFDMjbdUcvdd1YwY4EoT8=
X-Google-Smtp-Source: ABdhPJz69EaEgP2KXcY0wbHtjlnzYxtTuDGWsuhV85UPIwKJyj7esMLH3012pmMj5S26ZYxflW+SsA==
X-Received: by 2002:ad4:5144:: with SMTP id g4mr10663121qvq.3.1626447617089;
	Fri, 16 Jul 2021 08:00:17 -0700 (PDT)
Received: from ?IPv6:2603:6080:6304:450a::433?
	(2603-6080-6304-450a-0000-0000-0000-0433.res6.spectrum.com.
	[2603:6080:6304:450a::433]) by smtp.gmail.com with ESMTPSA id
	z23sm1307604qts.96.2021.07.16.08.00.16 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 16 Jul 2021 08:00:16 -0700 (PDT)
Subject: Re: audio cutting and exporting
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <ddddb6cd-5f17-c0ab-1b56-e5ee9281c84b@gmail.com>
Message-ID: <b7bbb0ef-22f1-f511-7157-7f20b9107f56@gmail.com>
Date: Fri, 16 Jul 2021 11:00:14 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <ddddb6cd-5f17-c0ab-1b56-e5ee9281c84b@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I'm a long-time Audacity user, and I've found it to be about the best 
application available for what you're trying to do. You select the audio 
you want using shifted left and right arrows, similar to editing text, 
and you can shorten the selection on the left using control+shift+right 
or shorten the selection on the right using control+shift+left. Unlike 
editing text, if you shift+right and then shift+left, your selection on 
the right doesn't change, but you add sound to your selection on the 
left. An important set of keys for you is control+1, control+2 and 
control+3. Each file you import or track you record has a default zoom 
width based on its initial length. Control+2 resets that zoom width to 
something in the middle, it says normal. Control+1 zooms in, tightening 
the area that you select with shift+arrows and deselect with 
control+shift+arrows. Control+3 does the opposite. It zooms the audio 
out so that each time you select or deselect a section of your audio, 
the selected or deselected piece is longer. These keys also determine 
how far your cursor moves when you just want to seek through the audio 
to find the part you want to select. You jump further using control+3 or 
tighten the movement with control+1. And of course control+2 will take 
you back to a middle level. The rest is pretty straightforward. Deletion 
is achieved with the delete key, cut, copy and paste are the same as in 
a text editor, and file -> export selected audio will export what you 
have selected, even if you don't cut or copy it.


If you have access to Flatpak in Fedora, I would recommend installing 
the 3.x Audacity you'll find there, unless there is a packaged 3.x 
version already available. 2.x has a strange focus bug that seems to 
take you off your main track list randomly, usually putting you on some 
kind of drop-down box related to sound selection or device output. The 
3.x version in Flatpak doesn't seem to have this issue; no matter what I 
do, I always stay focused on the track list using 3.x, but my package 
management doesn't have that version, so I need to install from flatpak, 
which can be done easily using gnome-software. Hope this helps.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

