Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 52D5A391EF0
	for <lists+blinux-list@lfdr.de>; Wed, 26 May 2021 20:22:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1622053373;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vMHsiOaP26P/2v0pdpVaGglnqkSYL7UbnTJT7e9W9dw=;
	b=Fg+gacWMQqDcwh6ZJiuFbS9HKaKAItKk+Fbo+WjYnez6K95Ku207IWumWbvi4/49xzNF0U
	M2P9sMTT1NL2Uc3do1ScqR8+NJuAaqtIaEHX65qXI6jjF8HqTGjblVnGPdmO85T9c9Kf0e
	RrjGjHSyLV82W6sRnEbcepZ7i9LzT6w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-233-TKsnnBzZP0KkwbvzORB-vQ-1; Wed, 26 May 2021 14:22:51 -0400
X-MC-Unique: TKsnnBzZP0KkwbvzORB-vQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6777D640A4;
	Wed, 26 May 2021 18:22:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 90A895C23E;
	Wed, 26 May 2021 18:22:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E45E155348;
	Wed, 26 May 2021 18:22:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14QIMWFa027577 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 May 2021 14:22:32 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2D83E209A514; Wed, 26 May 2021 18:22:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 294B820962EC
	for <blinux-list@redhat.com>; Wed, 26 May 2021 18:22:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7C84980D0E0
	for <blinux-list@redhat.com>; Wed, 26 May 2021 18:22:25 +0000 (UTC)
Received: from gateway2.unifiedlayer.com (gateway2.unifiedlayer.com
	[69.89.25.8]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-555-mSheyUU5OC2tBeeg9d9Osg-1; Wed, 26 May 2021 14:22:13 -0400
X-MC-Unique: mSheyUU5OC2tBeeg9d9Osg-1
Received: from cm6.websitewelcome.com (unknown [108.167.139.19])
	by gateway2.unifiedlayer.com (Postfix) with ESMTP id 1FD9120088AE5
	for <blinux-list@redhat.com>; Wed, 26 May 2021 13:00:53 -0500 (CDT)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id lxpsl98kysMPvlxptlj4Dt; Wed, 26 May 2021 13:00:53 -0500
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:39896 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1llxps-0014tC-PZ
	for blinux-list@redhat.com; Wed, 26 May 2021 13:00:52 -0500
Date: Wed, 26 May 2021 13:00:51 -0500
To: blinux-list@redhat.com
Subject: Re: Crawling a website for media files.
Message-ID: <20210526130051.2e6fddad@bigbox.attlocal.net>
In-Reply-To: <CAO2sX31bb2qOf=erBYE2ZQtnKpTYkFMOx8ynLHnvztRYQh=rjQ@mail.gmail.com>
References: <CAO2sX31bb2qOf=erBYE2ZQtnKpTYkFMOx8ynLHnvztRYQh=rjQ@mail.gmail.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 172.0.250.193
X-Source-L: No
X-Exim-ID: 1llxps-0014tC-PZ
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:39896
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
X-Mimecast-Spam-Signature: yes
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  Both seem to have RSS feeds buried in the HTML source,
so I'd point a podcatcher at the feed URLs and have it do all the
heavy lifting.  As an added bonus, when new episodes are released, it
should just download the new ones.  I like "castget" so here's a
simple ~/.castgetrc example that should slurp them down 

  $ cat >> ~/.castgetrc <<EOF
  [mediamd]
  spool=$HOME/Podcasts/MediaMD/
  url=http://www.mediamdpodcast.com/feed/podcast

  [parahuman]
  spool=$HOME/Podcasts/Parahuman/
  url=http://parahumanaudio.com/feed/podcast
  EOF
  $ mkdir -p $HOME/Podcasts/{MediaMD,Parahuman}

and then run

  $ castget

(optionally with "-v" for verbose output) to fetch all the episodes.
If you have some other podcatcher that you like, putting that URL
into it should be enough to let it do the hard work.  If new episodes
come out, re-running just "castget" will fetch the updates.

If either of these give you grief, I can toss together some scraping
utility to extract the direct MP3 URLs and pass those off to wget if
needed.

Hope this helps.

-Tim



On May 26, 2021, Linux for blind general discussion wrote:
> Okay, so I've known for a while that someone has been recording
> audio books of two completed works from one of my favorite web
> serial writers. Thing is, both works in question span hundreds of
> chapters and the people doing the audio books don't, best I can
> tell, offer any convenient means of downloading everything they've
> recorded thus far, and I don't like the idea of tabbing through and
> control entering over 100 links for one or going through a couple
> hundred blog posts and locating the download button for the other.
> 
> I'm using Firefox-ESR 78.10... Deos anyone know of an accessible
> browser extention that can either download all of the media files
> linked on the page in the active tab or recursively download media
> files from the current page and pages it links to on the same
> domain, ideally by adding a "Download All" option to the context
> menu? Alternatively, anyone know a command line tool that can do
> this, ideally which can read URLs from a txt file?
> 
> If it helps, the pages I have bookmarked for the two audiobooks are:
> 
> http://www.mediamdpodcast.com/pact-audiobook-project/
> 
> http://parahumanaudio.com/
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

