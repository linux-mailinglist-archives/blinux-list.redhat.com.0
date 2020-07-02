Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 51849211701
	for <lists+blinux-list@lfdr.de>; Thu,  2 Jul 2020 02:08:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593648511;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eHqmK/tBWIW8iYkbAroSgfja/YEHl+tJ7z3LS6aRY3A=;
	b=NSxYMBZ8dXlJ78n/IiwQkljndyQRK+VaYBc2tylnGEoEu+5qFLDia7c31cKp74o3v2qKzK
	h0jPUpS73g9HFrukLgud2ofsAQUZMjsVgk+Aw2Y6qLHQazpEOEEPpxM4AkyNe3UkX48CHt
	P4hTfLaaXkxX0gPz5acbPoiSEQGFdgU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-211-KBNrCKOBNkyf_6F_Lz43kg-1; Wed, 01 Jul 2020 20:08:29 -0400
X-MC-Unique: KBNrCKOBNkyf_6F_Lz43kg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6E5C7800C64;
	Thu,  2 Jul 2020 00:08:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 93F5017D8F;
	Thu,  2 Jul 2020 00:08:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B6BFC1809547;
	Thu,  2 Jul 2020 00:08:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06207wMP029816 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 1 Jul 2020 20:08:01 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BAD58202B173; Thu,  2 Jul 2020 00:07:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B69922022EA2
	for <blinux-list@redhat.com>; Thu,  2 Jul 2020 00:07:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F32C5186E3A9
	for <blinux-list@redhat.com>; Thu,  2 Jul 2020 00:07:55 +0000 (UTC)
Received: from server2.shellworld.net (ip-66-172-12-120.chunkhost.com
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-4-J2EpD0nGMayrbodnYYSwLg-1; Wed, 01 Jul 2020 20:07:53 -0400
X-MC-Unique: J2EpD0nGMayrbodnYYSwLg-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id A8541541EC2; Thu,  2 Jul 2020 00:07:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id A7756541DD4
	for <blinux-list@redhat.com>; Wed,  1 Jul 2020 20:07:52 -0400 (EDT)
Date: Wed, 1 Jul 2020 20:07:52 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: duckduckgo is now duckduckstop
In-Reply-To: <alpine.NEB.2.22.394.2007010559480.7609@panix1.panix.com>
Message-ID: <Pine.LNX.4.64.2007012006530.10772@server2.shellworld.net>
References: <alpine.NEB.2.22.394.2007010559480.7609@panix1.panix.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

I wonder if the issue has been corrected?
Just visited duckduckgo in lynx, and it worked as it does normally.



On Wed, 1 Jul 2020, Linux for blind general discussion wrote:

> It's possible to find results but not possible to access results.  I found
> a sourceforge.net article on newsboat which lite.duckduckgo.com cannot
> access.  I'll check other searches and see if they're also broken.  It
> could be duckduckgo is having some server problems this morning.
>
>
>
> --
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

