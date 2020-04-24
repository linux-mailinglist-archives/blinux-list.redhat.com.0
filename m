Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id ABE6D1B76ED
	for <lists+blinux-list@lfdr.de>; Fri, 24 Apr 2020 15:26:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1587734818;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lVWqIuPMoevVjXMgPfVSGl8HYyySYRb1+6NN776Siwg=;
	b=dBLKL4kriQi8/XyR2VsmRVqB0SLhqOI2warMDTi2aixciFDJDh7wivTzZ3Qj0ilEySQ3Vu
	91KRQN2YOWe1GuAUXP2up4z4N+5zgS94KXm7pRwFlZDLzT+k2ba8Xgo/lSXOefbb2O+cyC
	0wIDGv/sTivcUNJOnp+fUTnfPPubHXk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-368-f-BShVDmPYas8ecoKSmBag-1; Fri, 24 Apr 2020 09:26:55 -0400
X-MC-Unique: f-BShVDmPYas8ecoKSmBag-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 89753800580;
	Fri, 24 Apr 2020 13:26:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 536E55D9CC;
	Fri, 24 Apr 2020 13:26:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8A7734CAA0;
	Fri, 24 Apr 2020 13:26:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 03ODQXhO001840 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 24 Apr 2020 09:26:33 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0AA9B2156A3A; Fri, 24 Apr 2020 13:26:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0693B2156A23
	for <blinux-list@redhat.com>; Fri, 24 Apr 2020 13:26:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 029D480066D
	for <blinux-list@redhat.com>; Fri, 24 Apr 2020 13:26:31 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-372-HY7vOTDtOpWy4HOtI8BBDQ-1; Fri, 24 Apr 2020 09:26:28 -0400
X-MC-Unique: HY7vOTDtOpWy4HOtI8BBDQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 497w1J0l9kz1VcN
	for <blinux-list@redhat.com>; Fri, 24 Apr 2020 09:26:28 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 497w1H6t77zcbc; Fri, 24 Apr 2020 09:26:27 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 497w1H6NXXzcbV
	for <blinux-list@redhat.com>; Fri, 24 Apr 2020 09:26:27 -0400 (EDT)
Date: Fri, 24 Apr 2020 09:26:27 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: unpacking git files
In-Reply-To: <20200424114201.520f6292@telaviv1.shlomifish.org>
Message-ID: <alpine.NEB.2.21.2004240919040.27528@panix1.panix.com>
References: <alpine.NEB.2.21.2004231711080.12964@panix1.panix.com>
	<20200423.211449.706.12@[0.0.0.0]>
	<alpine.NEB.2.21.2004231747100.22899@panix1.panix.com>
	<20200424114201.520f6292@telaviv1.shlomifish.org>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 03ODQXhO001840
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Okay, so far as I know fahlib-git on github is actually a private
repository.  That is one of the packages listed in foldingathome-beta's
README.md file used to build FAHClient.  The better news turns out to be
I needed to clear the old data files from this machine in addition to
the foldingathome-beta package and run everything as I would if I were a
new user in foldingathome-beta supplying the same configuration
information and now foldingathome-beta is working fine.

It doesn't interfere with computer operations but does make the machine
run harder since the fan is on constantly as this package runs so it's
unnecessary for me to unpack a local version of a git file this time.

On Fri, 24 Apr 2020, Linux for blind general discussion wrote:

> Date: Fri, 24 Apr 2020 04:42:01
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: unpacking git files
>
> On Thu, 23 Apr 2020 17:47:57 -0400
> Linux for blind general discussion <blinux-list@redhat.com> wrote:
>
> > That won't work in this case, since I already tried it.  It's requiring
> > a login which I cannot now do.
> >
>
> git clone works for public github repositories without needing login:
>
> ```
> [kdetest@localhost ~]$ git clone https://github.com/joewing/jwm
> Cloning into 'jwm'...
> remote: Enumerating objects: 11191, done.
> remote: Total 11191 (delta 0), reused 0 (delta 0), pack-reused 11191
> Receiving objects: 100% (11191/11191), 6.00 MiB | 3.18 MiB/s, done.
> Resolving deltas: 100% (7847/7847), done.
> [kdetest@localhost ~]$ rm -fr jwm/
> [kdetest@localhost ~]$ git clone https://github.com/joewing/jwm.git
> Cloning into 'jwm'...
> remote: Enumerating objects: 11191, done.
> remote: Total 11191 (delta 0), reused 0 (delta 0), pack-reused 11191
> Receiving objects: 100% (11191/11191), 6.00 MiB | 3.18 MiB/s, done.
> Resolving deltas: 100% (7847/7847), done.
> [kdetest@localhost ~]$ ls .ssh
> ls: cannot access '.ssh': No such file or directory
> [kdetest@localhost ~]$
> ```
>
> also ".git" (which holds the repository's history) is a directory - not a file,
> see: https://git-scm.com/ .
>
> Which command are you using exactly?
>
> > On Thu, 23 Apr 2020, Linux for blind general discussion wrote:
> >
> > > Date: Thu, 23 Apr 2020 17:14:49
> > > From: Linux for blind general discussion <blinux-list@redhat.com>
> > > To: blinux-list@redhat.com
> > > Subject: Re: unpacking git files
> > >
> > > Try
> > > git clone http://github.com/whatever/whatever.git
> > >
> > >
> > > ----- Original Message -----
> > > From: Linux for blind general discussion <blinux-list@redhat.com>
> > > To: blinux-list@redhat.com
> > > Date: Thu, 23 Apr 2020 17:13:42 -0400
> > > Subject: unpacking git files
> > >
> > > > If you download a git file how is it possible to have git unpack the file
> > > > for you into its own directory tree?
> > > > I failed to write my git credentials in braille and haven't used them for
> > > > a very long time so may be able to get a git file using wget but for now I
> > > > don't know how to unpack the file.
> > > >
> > > >
> > > >
> > > > --
> > > >
> > > >
> > > > _______________________________________________
> > > > Blinux-list mailing list
> > > > Blinux-list@redhat.com
> > > > https://www.redhat.com/mailman/listinfo/blinux-list
> > > >
> > > >
> > >
> > >
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://www.redhat.com/mailman/listinfo/blinux-list
> > >
> > >
> >
>
>
>
> --
>
> Shlomi Fish       https://www.shlomifish.org/
> What does ?Zionism? mean? - https://shlom.in/def-zionism
>
> ?A is A, and A is not not-A? WTH is he talking about??! Of course A can be
> not-A! I want a little of the stuff he?s on!?
>     ? Initial reaction to the https://en.wikipedia.org/wiki/Organon
>
> Please reply to list if it's a mailing list post - https://shlom.in/reply .
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

