Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4AFE2282D9E
	for <lists+blinux-list@lfdr.de>; Sun,  4 Oct 2020 22:56:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601845012;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Q9zqHmYVv3O+k/t7h3QdfGe6DkXM2ED/Ch7I0g67Yk4=;
	b=LbRASBSVFS58nHKdCUSLdD0DG2P6ww+GHuG0IWnGOPhlcFeKVkTNdLmG+Owse8mLlEcFTW
	Q0CluTfncnDc0ifdAyc8tBeH5R2bQixKTtoRaGJFpuFWJtiS6M7MCE/8vZ6RkzfgEoiU0h
	muPGYWan2OqscOOxkn356/HAlQj3WDw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-81-YCS7A762M16JKBlrCkqgiA-1; Sun, 04 Oct 2020 16:56:49 -0400
X-MC-Unique: YCS7A762M16JKBlrCkqgiA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9160F1005504;
	Sun,  4 Oct 2020 20:56:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1B86A1974D;
	Sun,  4 Oct 2020 20:56:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E6869181A06C;
	Sun,  4 Oct 2020 20:56:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 094KqsBJ021941 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 4 Oct 2020 16:52:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D1F191111446; Sun,  4 Oct 2020 20:52:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CD6D11111444
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 20:52:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C9DEF101A53F
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 20:52:52 +0000 (UTC)
Received: from gateway3.unifiedlayer.com (gateway3.unifiedlayer.com
	[67.222.46.157]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-250-dYyfu32PM6OlXrHcbu8r4w-1; Sun, 04 Oct 2020 16:52:50 -0400
X-MC-Unique: dYyfu32PM6OlXrHcbu8r4w-1
Received: from cm3.websitewelcome.com (unknown [108.167.139.23])
	by gateway3.unifiedlayer.com (Postfix) with ESMTP id 5DC7C200A3B6D
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 15:03:19 -0500 (CDT)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id PAE3kdAP5KgzSPAE3k0uRU; Sun, 04 Oct 2020 15:03:19 -0500
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:14457 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1kPAE2-004E9e-Vs
	for blinux-list@redhat.com; Sun, 04 Oct 2020 15:03:19 -0500
Date: Sun, 4 Oct 2020 15:03:17 -0500
To: blinux-list@redhat.com
Subject: Re: Console screenreaders
Message-ID: <20201004150317.73c946b9@bigbox.attlocal.net>
In-Reply-To: <CAO2sX30sh2cLHnm3AUCRP2iYFByeCZ7SHxHrHwoZFw9RVJb5rg@mail.gmail.com>
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
	<5b699b56-2241-b1ef-18c3-3d05614e9b8a@slint.fr>
	<20200930121251.7d6b8c35@bigbox.attlocal.net>
	<87tuvf2km3.fsf@cmbmachine.messageid.invalid>
	<20201003130430.GA2173@rednote.net>
	<alpine.DEB.2.23.453.2010030632540.2247242@chime>
	<20201003100234.4f71a96d@bigbox.attlocal.net>
	<87y2knjmwe.fsf@cmbmachine.messageid.invalid>
	<20201004132601.GA9202@rednote.net>
	<20201004.134338.155.30@192.168.1.130>
	<20201004130414.6b75be74@bigbox.attlocal.net>
	<CAO2sX30sh2cLHnm3AUCRP2iYFByeCZ7SHxHrHwoZFw9RVJb5rg@mail.gmail.com>
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
X-Exim-ID: 1kPAE2-004E9e-Vs
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:14457
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  If it helps (so to speak), nano *should* have an option to
turn off the help/status at the bottom either with the "-x" option on
the command-line or by adding

  set nohelp

to your ~/.nanorc file.  You can also get an additional line of
editing by either invoking it with the "-O" option or

  set morespace

in your ~/.nanorc file.  There's a pending patch to completely remove
the title-bar as well

https://www.zeuscat.com/andrew/software/nano/notitlebar.shtml

but I'm not sure that it has officially made it into a release yet.
With that you can use the "-OO" option or put

  set notitlebar

in your ~/.nanorc

It's not my primary editor as I'm more of a vi/vim/ed sort of guy,
but at least nano offers some options to make it less chatty if you
want.

-tim

On October  4, 2020, Linux for blind general discussion wrote:
> I've never used Tmux, but that sounds like a prime example of why I
> prefer SBL's less chatty nature to espeakup. To give a similar
> example with a program I use regularly, Nano defaults to having a
> title bar on the top and a status bar on the third line from the
> bottom(the bottom two lines are a command quick reference).
> Espeakup will read these everytime they change, but SBL will only
> read them if I use screen review to read them, and in most cases, I
> prefer not to hear what's on those lines(the one exception I can
> think of where I would prefer espeakup's chattier behavior is in
> the case of pressing ctrl+C, which prints current position on the
> status line(I also often care about the lines written when saving a
> file, but since I'm usually at the end of a file when saving, I can
> usually just use caps+pageDown to read from current position to end
> of screen instead of having to manully navigate to the status line
> with caps and up/down arrows like I usually have to do with current
> position since I usually do ctrl+c in the middle of a file).
> 
> Admittedly, there are cases I wish I could switch between "read all
> newly displayed text" and "read only what I tell you to read" on the
> fly. I find the latter better for most things, but the former is
> nice when playing text adventures.
> 
> -Jeffery
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

