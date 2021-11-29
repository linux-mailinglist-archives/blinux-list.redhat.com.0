Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 192ED4622EB
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 22:04:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638219883;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=G0T3xJDKiVU2w4Iwqk6eEu7LDHAO97npqBzZynWLprA=;
	b=OV/u/o9cUcEI58Rxt+zV6rHCRFoVbwUvrPjHi/sI6csItDF7ELf7gNbfs6prb6mD8ifMSw
	zYl04XxfqNDauh5LhjYuJej0f40LSGbqcdJsxp3RGxy7M7f301fLl40cDTpP8WfgOai294
	UyFFkNB2XtyuM5mQCDIETWkOGHVb0Gg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-604-Op_9bMbGMAa5DD3b-JU2-w-1; Mon, 29 Nov 2021 16:04:38 -0500
X-MC-Unique: Op_9bMbGMAa5DD3b-JU2-w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 043C081CCB4;
	Mon, 29 Nov 2021 21:04:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DC52B10013D6;
	Mon, 29 Nov 2021 21:04:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EF8304BB7C;
	Mon, 29 Nov 2021 21:04:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATL4VaS007504 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 16:04:31 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 114BD4047279; Mon, 29 Nov 2021 21:04:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0BEAF4047272
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 21:04:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E7D9B85A5B5
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 21:04:30 +0000 (UTC)
Received: from gateway11.unifiedlayer.com (gateway11.unifiedlayer.com
	[69.89.24.87]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-478-MUASKL1INp6yx_RyAUOKKQ-1; Mon, 29 Nov 2021 16:04:28 -0500
X-MC-Unique: MUASKL1INp6yx_RyAUOKKQ-1
Received: from cm3.websitewelcome.com (unknown [108.167.139.23])
	by gateway11.unifiedlayer.com (Postfix) with ESMTP id ECF69200ADD95
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 14:42:08 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id rnTUm0u0tuhW2rnTUmk8uy; Mon, 29 Nov 2021 14:42:08 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:37338 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1mrnTU-000EIO-Ld
	for blinux-list@redhat.com; Mon, 29 Nov 2021 14:42:08 -0600
Date: Mon, 29 Nov 2021 14:42:07 -0600
To: blinux-list@redhat.com
Subject: Re: What is the easiest and most accessible editor?
Message-ID: <20211129144207.7dfb0e16@bigbox.attlocal.net>
In-Reply-To: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
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
X-Exim-ID: 1mrnTU-000EIO-Ld
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:37338
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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

Tim here.  It really depends on what environment you're in, how much
power you need, how customizable you need it to be, and how you
think/operate/use-a-screen-reader.

- vi/vim: very powerful, should be available out of the box on most
  installs, but a bit opaque.  This is my daily driver for
  text-editing.

- emacs: also very powerful, the scripting language is LISP and very
  customizable; doesn't come out-of-the-box on most installs, but can
  be easily added

- nano: a much lower learning curve, but also a much lower ceiling.
  There are things that I do regularly with vi/vim that would be
  impossible with nano

- ed: the classic line-based editor.  It *should* be available
  out-of-the-box on every system since it's part of the POSIX
  specification, but a lot of distros have relegated it to a package
  you have to install after the fact.  It's line-based, so it has a
  much more input/output based feel to it which can work more
  comfortably with a screen-reader, without the need to review the
  screen (like the other editors here which have TUIs and take over
  the whole display).  When I'm using text-to-speech, I actually
  prefer ed.  It's kinda opaque, but learning the basics doesn't take
  long, and it's really light-weight yet powerful.  Though I'm biased
  since I'm the goofball behind the "ed(1) conference" account on
  Twitter (@ed1conf).  There's also "edbrowse" (I believe it was
  created by a blind developer) which takes some of the
  ideas/interface of "ed" and adds a lot of additional features to it.

- joe, jove, and a host of other smaller console text editors.  I
  haven't messed around with them as much since I'm content with
  what's available out of the box with vi, vim, or ed.

Outside a terminal, there are a number of GUI text-editors and IDEs
that folks like, but I'm not as well-versed with them since I'm an old
terminal dork. (grins)  The accessibility of any of those will
definitely vary so you'd have to try each out for yourself.  The nice
thing about the terminal is that you can easily review every element
on the screen because it's just a grid of characters. GUIs have to
expose such information intentionally, at the beneficence of the
developer.

The learning-curves for vi/vim, ed, and emacs can be a little
steeper, but vim comes with a "vimtutor" program that helps walk you
through using it.  And to some folks, the modal nature of vi/vim/ed
takes a while to get used to.  But anybody who has used a
screen-reader likely understands the idea of a "review mode" which is
also a modal interface.

I've used vi/vim for 20+ years and am glad to help where I can.  You
can also find me on the Vim mailing list, on Reddit's /r/vim and as
@gumnos on Twitter, and as mentioned, I run the @ed1conf account on
Twitter & Mastodon, so I can help there, too.

Hope this helps,

-tim

On November 29, 2021, Linux for blind general discussion wrote:
> Hi Friends,
> 
> Since you have been lately discussing configurations and editing
> them, changing them, or adding scripts, What is the most accessible
> and easiest editor to use in Slint for editing configurations? My 
> understanding is that Vi, Nano, and Pico all come preinstalled. Are 
> there other text editors preinstalled? or, Do you recommend one
> that I can install if the abovementioned ones are not recommended?
> 
> Cheers,
> 
> Ibrahim
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

