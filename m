Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 83B3C2A4A31
	for <lists+blinux-list@lfdr.de>; Tue,  3 Nov 2020 16:43:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604418232;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=io0JsCFOdY5HX0u+OyiuEDCdh4Sgjdmdh+obQsXCp/4=;
	b=UzQyFVPZ+qGV5BUiR/Z+Eu77LA2osNh0Av6uq+qKrPgbKLdPlVm0+DIKT9mTCcO8K31iMf
	OkNC7OksLy7f73Jxg4p1CQ5QLDjvyDhpYJ5UOL7o+oYIIErZ8OrA36X4S46Gi8UIrwi7uL
	Q6V1GD1lgQ+gla40j0GP1s6+Ftrb+/o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-229-Sp2Bvvn2Oqiw_5XT7o9i0Q-1; Tue, 03 Nov 2020 10:43:49 -0500
X-MC-Unique: Sp2Bvvn2Oqiw_5XT7o9i0Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9E4FB87951A;
	Tue,  3 Nov 2020 15:43:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8CBD85C1D0;
	Tue,  3 Nov 2020 15:43:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0C92758107;
	Tue,  3 Nov 2020 15:43:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0A3FhPF4006940 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 3 Nov 2020 10:43:25 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 842782156720; Tue,  3 Nov 2020 15:43:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7F922215670A
	for <blinux-list@redhat.com>; Tue,  3 Nov 2020 15:43:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1E09F8007DF
	for <blinux-list@redhat.com>; Tue,  3 Nov 2020 15:43:22 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-499-UnSPNBwIMwKuo5sCfSMxkA-1; Tue, 03 Nov 2020 10:43:19 -0500
X-MC-Unique: UnSPNBwIMwKuo5sCfSMxkA-1
Received: by mail-qk1-f172.google.com with SMTP id 140so15044660qko.2
	for <blinux-list@redhat.com>; Tue, 03 Nov 2020 07:43:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=szn2gvMLgj3l65BXzx3mn6PriOV5Kdv6i5/mcxK7LHk=;
	b=KhyrqYjZ1zJ7hoXz3g1oNHYEQWf8kYTM6ljP1jrmdIXDGKSnbcNaciSyZDeX2C7g1/
	s1dL3C88NZzEVzxnj+NRQkTFANixvnWfLtId/YEVhqJ78MUrsjRIxT0jIwfpvikYHotf
	aDUYcnHTMCzKwNaMS2IetczJgEUgSvwXH02fxUJ+O64Q4RKNIHGl4544bQ+DQmFtj7e6
	OOKuKl3ae48BvMdp6KJYJPCtH/bPLgbeGyDxdbUpRJQWs4SXw0YxVEMJQuRWpAuX4NYw
	yL02FW93YZ3f8KNFmhiilLeO9+jOepPim+seW/G1BsDYHmnbib7MNcCzvv/hbt8gmCPI
	FrEQ==
X-Gm-Message-State: AOAM533q69N/WvgIlW06KFmasWwiEgK0gP1L2LLgTTWG4gN4+WS34afg
	gj65zH38uxvrjz4uceWZizKxJ8YnzYGOPqMT8ulN2orW/UA=
X-Google-Smtp-Source: ABdhPJzhpBInpUO2GypcCmF92sLiPihOe3IyddLsqxrbtxoDP58nHJ/AdfCIRIA+1C5p6S5P5MI8OXxdCBjndToN5wI=
X-Received: by 2002:a05:620a:814:: with SMTP id
	s20mr20170571qks.127.1604418199137; 
	Tue, 03 Nov 2020 07:43:19 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:e405:0:0:0:0:0 with HTTP;
	Tue, 3 Nov 2020 07:43:18 -0800 (PST)
Date: Tue, 3 Nov 2020 15:43:18 +0000
Message-ID: <CAO2sX33EbH0hFxy26pyJtHtaFsE=dYOfqQROrypOyvJUaCoTaw@mail.gmail.com>
Subject: Copying hardwrapped text into softwrapped web forms.
To: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Okay, so this isn't really about accessibility so much as a fringe
case where what I do for accessibility causes problems for the
sighted.

I do all of my writing in the nano text editor in a text-only
environment and favor hardwarpped plain text files both for my own
work and for reformatting stuff I download for offline reading.

If I want to post something I wrote online, it usually means switching
to a graphical session, opening the text file in Firefox, and then
copying the hardwrapped text into a text box, and generally, the text
box and the page produced after submitting the form will have
softwrapping.

Generally, this isn't a big deal as long as the resulting page is
displayed on something with at least 80 characters of width, but it
can cause choppy, uneven lines on displays that are narrower than 80
characters, such as a phone screen in portrait mode.

Anyone know a workaround for this? I'm thinking the ideal solution
would be a modified copy/cut command that would ignore the single
linebreaks nano's justify command adds to hardwrap text, but not the
double line breaks between paragraphs, but I don't know if there
exists a Firefox extension/about:config option or an Orca function to
do this.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

