Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id CC37B210F72
	for <lists+blinux-list@lfdr.de>; Wed,  1 Jul 2020 17:37:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593617827;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rCgR2740/XulaiQiwISUj6IHBslVIa9SRo/IkNdFgco=;
	b=QEm7ePRaOHVlhsjihWLq9jSs44RwaLkOR9OovqNQ/bMnJTqIqenjmhcVWn8QVHuzb/euwy
	rKQ/AGO/wdM+i124rZolwie0Qz29StRW6ahppGz/z7UUQT+FvQo/oOh5wcfpePweII+rIB
	sT9YiYGYkuIw2jg016CgCIkiD9Yb3Ps=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-367-jl5v9dCAOBy8jQICx5X6Nw-1; Wed, 01 Jul 2020 11:37:06 -0400
X-MC-Unique: jl5v9dCAOBy8jQICx5X6Nw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9021180183C;
	Wed,  1 Jul 2020 15:37:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AE57090353;
	Wed,  1 Jul 2020 15:36:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3696A1809543;
	Wed,  1 Jul 2020 15:36:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 061Fakip032009 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 1 Jul 2020 11:36:47 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 98CFFF6CA0; Wed,  1 Jul 2020 15:36:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 61E6CF7FA6
	for <blinux-list@redhat.com>; Wed,  1 Jul 2020 15:36:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8F79D8007CD
	for <blinux-list@redhat.com>; Wed,  1 Jul 2020 15:36:41 +0000 (UTC)
Received: from mail.suchdamage.org (mail.suchdamage.org [52.9.186.167])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-491-A4adE3d7NGqPlYlyuWwc5g-1; Wed, 01 Jul 2020 11:36:27 -0400
X-MC-Unique: A4adE3d7NGqPlYlyuWwc5g-1
Received: from localhost (localhost [127.0.0.1])
	by mail.suchdamage.org (Postfix) with ESMTP id E46902FA4E
	for <blinux-list@redhat.com>; Wed,  1 Jul 2020 11:28:10 -0400 (EDT)
Received: from mail.suchdamage.org ([127.0.0.1])
	by localhost (mail.suchdamage.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GX94hSUx0LZi for <blinux-list@redhat.com>;
	Wed,  1 Jul 2020 11:28:10 -0400 (EDT)
Received: from carter-zimmerman.suchdamage.org
	(c-24-147-244-250.hsd1.ma.comcast.net [24.147.244.250])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "laptop", Issuer "laptop" (not verified))
	(Authenticated sender: hartmans-laptop)
	by mail.suchdamage.org (Postfix) with ESMTPSA
	for <blinux-list@redhat.com>; Wed,  1 Jul 2020 11:28:10 -0400 (EDT)
Received: by carter-zimmerman.suchdamage.org (Postfix, from userid 8042)
	id 5DB37C2B4A; Wed,  1 Jul 2020 11:28:08 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: using orca wile using jack
References: <CADj8JxfchRF-=uX6bDxNyO+DE9fxUOygrV4E4GdLzEHoZYOPVg@mail.gmail.com>
	<CAPo=n-8eE+AtR2fp8LHn0oJSL19o94n6Tdv7NkAZ3ugNZ7cr6A@mail.gmail.com>
	<CADj8Jxcw1vypzVFk+NCLj3rw3q__n69QZRuJQaZewaYUKhAhKQ@mail.gmail.com>
	<CAPo=n-8ep5Pm_rGgHiSy9_ZoNi0jk0-g3P0z1ACcOtYK9S+mJQ@mail.gmail.com>
Date: Wed, 01 Jul 2020 11:28:08 -0400
In-Reply-To: <CAPo=n-8ep5Pm_rGgHiSy9_ZoNi0jk0-g3P0z1ACcOtYK9S+mJQ@mail.gmail.com>
	(Linux for blind general discussion's message of "Wed, 1 Jul 2020
	13:14:08 +0200")
Message-ID: <tslsgeb8dbr.fsf@suchdamage.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


I find that the jack sink has a predictable name.
So you can do something like

jack_control start
sleep 2

pacmd set-default-sink jack_out

--Sam Hartman

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

