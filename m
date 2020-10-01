Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 2F90A27F832
	for <lists+blinux-list@lfdr.de>; Thu,  1 Oct 2020 05:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601523240;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fe5ucnOdT28ICtWY9Wie6BGYn1eoNDCz0BwUtVMzffM=;
	b=fVcbWC/xZB4fZi1gBHpa3fywWixzCVTcFSt02G/oQsY3w9n/ho50RO6pqY8VeN4QpR9e7/
	2WjjoaslGO3mUcPL1yzSgAE0/kiuw2XIoVaO+31wua+70W0sUigTH2Ufn3JpKV2qDIxMWa
	SzTOg1enozlWjwuS55cLKMohG8BLXi0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-147-4hHI4KbfOFaBBs_RJQNMyw-1; Wed, 30 Sep 2020 23:33:57 -0400
X-MC-Unique: 4hHI4KbfOFaBBs_RJQNMyw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E7D6B8030DB;
	Thu,  1 Oct 2020 03:33:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A64AF78837;
	Thu,  1 Oct 2020 03:33:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 83E4C44A57;
	Thu,  1 Oct 2020 03:33:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0913UQIx026472 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 30 Sep 2020 23:30:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7764B2156A49; Thu,  1 Oct 2020 03:30:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 72FD12156A3C
	for <blinux-list@redhat.com>; Thu,  1 Oct 2020 03:30:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6A889186E120
	for <blinux-list@redhat.com>; Thu,  1 Oct 2020 03:30:23 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-489-hJg7VyVRMDip8UA6neLOYw-1; Wed, 30 Sep 2020 23:30:20 -0400
X-MC-Unique: hJg7VyVRMDip8UA6neLOYw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4C1zCc3ZXwz1Z1D
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 23:30:20 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4C1zCc2fNkzcbc; Wed, 30 Sep 2020 23:30:20 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4C1zCc2GgVzcbW
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 23:30:20 -0400 (EDT)
Date: Wed, 30 Sep 2020 23:30:20 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Console screenreaders
In-Reply-To: <87a6x7ozz0.fsf@yahoo.com>
Message-ID: <alpine.NEB.2.23.451.2009302329460.210@panix1.panix.com>
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
	<alpine.NEB.2.23.451.2009301308580.3267@panix1.panix.com>
	<3A5161DB-CEB0-4910-8B3F-300E01CE0605@cfcl.com>
	<87a6x7ozz0.fsf@yahoo.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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

Try fenrir start, and your system may reboot and may come up talking.

On Wed, 30 Sep 2020, Linux for blind general discussion wrote:

> Date: Wed, 30 Sep 2020 14:56:35
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: Console screenreaders
>
>
>
>
> Hi,
>
> I am trying to install and run those console screen-readers on Ubuntu
> Mate 20, but failiing. I am even trying to have speech at bootup, but I
> can't find any setting to do that. Can anyone direct me where to get
> more info about using Fenrir or Speakup?
>
> With Fenrir, try as I might since yesterday, running it does not produce
> speech. Instead, I get this error,
>
> I tried looking for any defaults on the Internet, but seems I am hitting
> against a wall.
>
> The same applies with Yasr: It says connection was refused and I do not
> get any speech.
>
> With speakup, soon after installing it with sudo apt-get install
> espeakup speakup-tools, I get the following error:
> Errors were encountered while processing:
>  espeakup
> E: Sub-process /usr/bin/dpkg returned an error code (1)
>
> TIa,
>
> On Wednesday, 30 September 2020, at 19:23, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> >> Some anonymous miscreant wrote:
> >>
> >> espeak preferable to fenrir but that's only because fenrir reads ansi line
> >> drawing characters when speaking.  espeak suppresses those characters.
> >
> > You might want to file a bug report, asking for this to be turned from a
> > feature into an option.
> >
> > -r
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
>
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

