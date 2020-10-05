Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3BB552836CA
	for <lists+blinux-list@lfdr.de>; Mon,  5 Oct 2020 15:43:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601905403;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dapOKe/QgsGRNZgEHZ+rUI0keRd+x22JAZV0shXYXJQ=;
	b=JbRRiqDoecLh8wh389TgVNPUkWGeO5nuGIB2YvX/7siQofxkNGo8ivxggJrHINZ6WS7Xg7
	TKf3lQr4oZCTpamOH50vgxzgcUGAySJ82A0qTotBR3Y3hgHcGWHGiM1VeZmhFnt64lNerr
	KBwtScvmRZ0tziQH3HmGU4C9xuKXTkY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-433-RqHS9tOKMYS0OJsN62Bb4A-1; Mon, 05 Oct 2020 09:43:21 -0400
X-MC-Unique: RqHS9tOKMYS0OJsN62Bb4A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C05FF106B216;
	Mon,  5 Oct 2020 13:43:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7B4CE610AF;
	Mon,  5 Oct 2020 13:43:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 53C1E1800B6C;
	Mon,  5 Oct 2020 13:43:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 095DhDUa012198 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 5 Oct 2020 09:43:13 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4E0CAA34FB; Mon,  5 Oct 2020 13:43:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 48ED3951CD
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 13:43:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4592A8582A6
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 13:43:11 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-240-_BQarKDcNHeeX85Z6QdQAQ-1; Mon, 05 Oct 2020 09:43:07 -0400
X-MC-Unique: _BQarKDcNHeeX85Z6QdQAQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4C4hcp6lnNz1cXv
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 09:43:06 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4C4hcp5YYGzcbc; Mon,  5 Oct 2020 09:43:06 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4C4hcp51LxzcbW
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 09:43:06 -0400 (EDT)
Date: Mon, 5 Oct 2020 09:43:06 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: speakup and links browser
In-Reply-To: <alpine.DEB.2.23.453.2010041557060.1431872@chime>
Message-ID: <alpine.NEB.2.23.451.2010050941340.22871@panix1.panix.com>
References: <alpine.NEB.2.23.451.2010040553040.14816@panix1.panix.com>
	<Pine.LNX.4.64.2010041843340.25048@server2.shellworld.net>
	<alpine.DEB.2.23.453.2010041557060.1431872@chime>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

You can do escape or alt to bring up menus but links doesn't speak when
alt key is hit but alt+f will get the file menu to speak though the
screen is really bleedy with whatever was on a web page showing through
and around the menu selections.

On Sun, 4 Oct 2020, Linux for blind general discussion wrote:

> Date: Sun, 4 Oct 2020 18:59:07
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: speakup and links browser
>
> I think with l i n k s  you hit an escape to receive a menu? As far as e l i n
> k s you must alter a config so you can tab from link2link as you can natively
> in l y n x
> Chime
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

