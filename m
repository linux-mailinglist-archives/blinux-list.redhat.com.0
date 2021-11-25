Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CAA745DE1E
	for <lists+blinux-list@lfdr.de>; Thu, 25 Nov 2021 16:56:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637855806;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=40h87V8zsoshmMe1jsKVtbO4ksKzm4wOO/qAHJHnj0g=;
	b=I64ISKLA5P4rzL5/6C2HkUrdSsjPYPDhdypjBhTKvhIppeBNQ6gPHKRlE+wNDXv4GJLPTk
	hBa4unFN8qLniOKuaUvH3XxN4I4ARt68xXYHOnK1apuIsGtXrqo3EaA4Po2PCD+22obwhC
	QFPSddHRpyouh5dzumckAbO66Eyme8s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-54-aqpOu9pMMby0WeZ-2Ah8oQ-1; Thu, 25 Nov 2021 10:56:43 -0500
X-MC-Unique: aqpOu9pMMby0WeZ-2Ah8oQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D4BBA102CB76;
	Thu, 25 Nov 2021 15:56:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C749910016F4;
	Thu, 25 Nov 2021 15:56:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 863BC1809C87;
	Thu, 25 Nov 2021 15:56:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1APFsrHC015296 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Nov 2021 10:54:53 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3ACD82026D48; Thu, 25 Nov 2021 15:54:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 355CB2026D46
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 15:54:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1C9A885A5BE
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 15:54:50 +0000 (UTC)
Received: from gateway6.unifiedlayer.com (gateway6.unifiedlayer.com
	[66.147.242.52]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-319-aP1ym6W9MJCOtsmBcTrVHg-1; Thu, 25 Nov 2021 10:54:47 -0500
X-MC-Unique: aP1ym6W9MJCOtsmBcTrVHg-1
Received: from cm6.websitewelcome.com (unknown [108.167.139.19])
	by gateway6.unifiedlayer.com (Postfix) with ESMTP id 3846C20125367
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 09:30:23 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id qGhbmfx8utGNQqGhbmONwh; Thu, 25 Nov 2021 09:30:23 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:30289 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1mqGha-001z4B-VE
	for blinux-list@redhat.com; Thu, 25 Nov 2021 09:30:23 -0600
Date: Thu, 25 Nov 2021 09:30:20 -0600
To: blinux-list@redhat.com
Subject: Re: Converting epubs to Plain-Text?
Message-ID: <20211125093020.2684df7d@bigbox.attlocal.net>
In-Reply-To: <50d03b33-62e0-2c8-c14e-40b717301dfc@hubert-humphrey.com>
References: <50d03b33-62e0-2c8-c14e-40b717301dfc@hubert-humphrey.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 76.222.220.222
X-Source-L: No
X-Exim-ID: 1mqGha-001z4B-VE
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:30289
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  If you have the "pandoc" package installed, you should be
able use it to convert epub to various formats such as plain-text,
markdown, or HTML.  To do a bunch of them in a loop, you can do
something like

  $ for f in *.epub ; do pandoc -f epub -t plain -o "${f%.epub}.txt"
  "$f" ; done

This will convert from EPUB to plain-text.  If you prefer HTML, you
can use

  $ for f in *.epub ; do pandoc -f epub -t html -o "${f%.epub}.html"
  "$f" ; done

or for Markdown (like plain-text with a bit of annotation):

  $ for f in *.epub ; do pandoc -f epub -t markdown_strict -o
  "${f%.epub}.md" "$f" ; done

Hope this helps,

-tim


On November 25, 2021, Linux for blind general discussion wrote:
> We interrupt these Fedora discussions to bring you a separate
> subject. I have several, maybe 18 ebooks in an epub format, from
> BookShare-and-Usenet. In looking around, an only tool I can find is
> "ebook-convert" part of a Calibre package to convert these.
> However, following cryptic instructions in its man-page, as well as
> what I see in duckduckgo, I am getting no where. Are their other
> better tools I need to grab in a Debian SID console? In addition, I
> really would like to convert all of these at once, in a batch.
> Thanks so much in advance for any-and-all guidance. We now resume
> our regularly scheduled programming Chime
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

