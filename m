Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0128628A92A
	for <lists+blinux-list@lfdr.de>; Sun, 11 Oct 2020 20:07:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1602439643;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=347Wf1fFxYlUyNN3epWHSB0KmPGfAeu6DUiPDrgsj3M=;
	b=YRCrm15+kBejEZw0X5kBXuS+8/Qb8zY3VkAKF+/cZbG2oofv6UJZuK/m02hQtC6WBW8Dq6
	3fNc1C/wTFqznAlPbYoKOMjlqamH1ya1dL5RHfHah0L488Em6VFcizua5F4HEmZF8Wx5wv
	nnVozVhovZbyTee1iXNQzWOe2XDcCoU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-495-Np-_WBfhOh2vHYy8c0k9jQ-1; Sun, 11 Oct 2020 14:07:20 -0400
X-MC-Unique: Np-_WBfhOh2vHYy8c0k9jQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B6ED5804001;
	Sun, 11 Oct 2020 18:07:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 23A1F60C05;
	Sun, 11 Oct 2020 18:07:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9F7CF92303;
	Sun, 11 Oct 2020 18:07:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09BI78RB028841 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 11 Oct 2020 14:07:08 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 49A3810DF4EC; Sun, 11 Oct 2020 18:07:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 461ED10DF4E1
	for <blinux-list@redhat.com>; Sun, 11 Oct 2020 18:07:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D61051823602
	for <blinux-list@redhat.com>; Sun, 11 Oct 2020 18:07:05 +0000 (UTC)
Received: from mail.carmickle.com (mail.carmickle.com [69.164.218.211])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-479-6eIxtFxlP7WbiG2hITCxDw-1; Sun, 11 Oct 2020 14:07:03 -0400
X-MC-Unique: 6eIxtFxlP7WbiG2hITCxDw-1
Received: from portkey.lan (unknown [176.230.58.27])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.carmickle.com (Postfix) with ESMTPSA id 3EE976F84FEC
	for <blinux-list@redhat.com>; Sun, 11 Oct 2020 18:00:37 +0000 (UTC)
Date: Sun, 11 Oct 2020 21:00:34 +0300 (IDT)
X-X-Sender: geoff@portkey.home
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: have we any experts on the list?
In-Reply-To: <alpine.NEB.2.23.451.2010111141030.17015@panix1.panix.com>
Message-ID: <alpine.DEB.2.11.2010112100050.1332@portkey.home>
References: <alpine.NEB.2.23.451.2010111141030.17015@panix1.panix.com>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On Sun, 11 Oct 2020, Linux for blind general discussion wrote:

> If yes, does a way exist for a user entering a room to list traffic that
> happened in the room before the user entered the room?

Expert on what, exactly?

Geoff.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

