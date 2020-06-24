Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 9C26F207C31
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jun 2020 21:31:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593027069;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GwEmyYcALmAJzUOllKUEcPFg0162lrfaBq96916KMlw=;
	b=igJgxlovffS/FeHXk4jSkpAlBQuf2SxsT4S1XUOOlElSTBndFRJnWtiQp77JHNJQTbrkRH
	cwukmt/DVsNJvI0eTYKnIY1N2FEff1/wkpBpOvtycgtOi8UsabmrjUrLKArc+0wPHXgKrk
	JW0xoAbgvmR7mhhsA4qsTiag/apdJUY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-6-SSVisZU9PRqrLUTrUrUP4g-1; Wed, 24 Jun 2020 15:30:54 -0400
X-MC-Unique: SSVisZU9PRqrLUTrUrUP4g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AD2298464BD;
	Wed, 24 Jun 2020 19:30:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5A6E8101042C;
	Wed, 24 Jun 2020 19:30:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0EF981809547;
	Wed, 24 Jun 2020 19:30:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05OJUl0r023539 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Jun 2020 15:30:47 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0C884EC4C8; Wed, 24 Jun 2020 19:30:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 087D21D0BA
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 19:30:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D43D18008A5
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 19:30:44 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-483--FSQa9IiO-qjJwErFbO1KA-1; Wed, 24 Jun 2020 15:30:11 -0400
X-MC-Unique: -FSQa9IiO-qjJwErFbO1KA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 49sYBq3LlWzdFw
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 15:30:11 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 49sYBq3gYZzcbc; Wed, 24 Jun 2020 15:30:11 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 49sYBq3dDbzcbV
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 15:30:11 -0400 (EDT)
Date: Wed, 24 Jun 2020 15:30:11 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: vlc bookmarks
In-Reply-To: <alpine.OSX.2.22.394.2006241427390.7107@dans-mac-mini.home>
Message-ID: <alpine.NEB.2.22.394.2006241529160.2217@panix1.panix.com>
References: <alpine.OSX.2.22.394.2006241427390.7107@dans-mac-mini.home>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Here is what I did to clean this url up as well as possible.  BTW,
that's not even a valid server let alone url.

#!/usr/bin/env bash
# file: surf - open odd url
firefox https://www.when.the.video.is.played.  again.makeuseof.com/tag/remember-playback-position-vlc/
On Wed, 24 Jun 2020, Linux
for blind general discussion wrote:

> Date: Wed, 24 Jun 2020 14:30:40
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: vlc bookmarks
>
> It can be done automattically when the video is next started without additional actions.  This explains:
>
> Resume Playback From Last Played Position in VLC
>
> https://www when the video is played again.makeuseof.com/tag/remember-playback-position-vlc/
>
> On Tue, 23 Jun 2020, Linux for blind general discussion wrote:
>
> > For command line users of vlc will it be possible to pause in a rather
> > long mp3 file and save a bookmark at that spot then later return to that
> > bookmark?
> >
> >
> >
> > --
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> >
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

