Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1D3DA28243E
	for <lists+blinux-list@lfdr.de>; Sat,  3 Oct 2020 15:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601730934;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pCSPefpol7j8fzK3h3L9Ed2nI7PzU0F2T9oaLUS4p9I=;
	b=GWIAwVZqkuSlny7eHf4m7nDmrYzxb1Xq+JAQPBPxawB5YZ3SfWj/rMvap9fUbMbSx6Zlx6
	suikhdbCFAJhdk/uhxhdpfJqvqQJa9h0DS+BQLkN02713RLAa8z26AuLodQWg1BOGGF99z
	7R4ON0gut+W0Z++EuaM5IwJwCK+L0L8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-503-_XB8UUHqPFqb66nLJTE8KQ-1; Sat, 03 Oct 2020 09:15:31 -0400
X-MC-Unique: _XB8UUHqPFqb66nLJTE8KQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 23D1880ED92;
	Sat,  3 Oct 2020 13:15:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0A23A1002C01;
	Sat,  3 Oct 2020 13:15:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D744E44A4A;
	Sat,  3 Oct 2020 13:15:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 093D7jdM018831 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 3 Oct 2020 09:07:45 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 42A4111921D8; Sat,  3 Oct 2020 13:07:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3E5AB11921B6
	for <blinux-list@redhat.com>; Sat,  3 Oct 2020 13:07:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3AB78186E120
	for <blinux-list@redhat.com>; Sat,  3 Oct 2020 13:07:43 +0000 (UTC)
Received: from rednote.net (opera.rednote.net [66.228.34.147]) (Using TLS)
	by relay.mimecast.com with ESMTP id us-mta-475-dUhGO6g3MrSeqe0t23UEtw-1;
	Sat, 03 Oct 2020 09:07:40 -0400
X-MC-Unique: dUhGO6g3MrSeqe0t23UEtw-1
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
	by rednote.net (8.15.2/8.15.2) with ESMTPS id 093D7dD5204975
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Sat, 3 Oct 2020 13:07:39 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 rednote.net 093D7dD5204975
DKIM-Filter: OpenDKIM Filter v2.11.0 rednote.net 093D7dD5204975
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id 093D7dcx204974
	for blinux-list@redhat.com; Sat, 3 Oct 2020 09:07:39 -0400
Date: Sat, 3 Oct 2020 09:07:39 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Console screenreaders
Message-ID: <20201003130739.GB2173@rednote.net>
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
	<5b699b56-2241-b1ef-18c3-3d05614e9b8a@slint.fr>
	<20200930121251.7d6b8c35@bigbox.attlocal.net>
	<Pine.LNX.4.64.2009301423450.2145@server2.shellworld.net>
	<CAO2sX33+gs2H_+cV+iux-TdnbVga46Kn0fQi4ePens9LC-QuWQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAO2sX33+gs2H_+cV+iux-TdnbVga46Kn0fQi4ePens9LC-QuWQ@mail.gmail.com>
X-Operating-System: Linux opera.rednote.net 5.8.11-100.fc31.x86_64
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Years ago, before Speakup supported software speech, I would keep yasr
on my laptop just so I could have a screen reader when I didn't have a
hardware synth on hand. I used it with flite.

Best,

Janina

Linux for blind general discussion writes:
> I'm personally a fan of SBL, particularly for it's
> hold down caps lock and use arrow keys to navigate the screen like a
> text document" style of screen review and it generally only reading
> the output from verbose commands that I tell it too instead of trying
> to read absolutely everything like espeakup does... though admittedly,
> I prefer espeakup's more verbose style when playing classic infocom
> text adventures in Fizmo or Frotz since I don't have to manually
> review the output of every action. I also find SBL works better with
> scrolling curses-basedapps as espeakup has a bad habit of reading a
> line that just scrolled on screen instead of the line that just came
> into focus when the two happen simultaneously.
> 
> Sadly, SBL is, as far as I know, only available for OpenSUse and
> Knoppix as a precompiled package, and even then, Knoppix only has an
> i386 version and the .deb isn't readily available ever since Alioth
> was taken offline and too the Knoppix repository with it. SBL isn't in
> active development either as far as I know, though I can't say I've
> noticed any issues with the current version's age.
> 
> About all I know about Fenrir is that it's userland-based while
> espeakup requires the speakup kernel module and that it's written in
> Python. I believe it also uses Speech dispatcher, which might make
> using software speech synths other than espeak/espak-ng easier in some
> cases(I've never had issues with espeak-ng, so I can't really comment
> on other synths).
> 
> I know even less about YASR than Fenrir, but I understand it requires
> a hardware speech synth to function properly.
> 
> 
> -Jeffery
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

