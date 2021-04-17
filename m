Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1C0B4363269
	for <lists+blinux-list@lfdr.de>; Sat, 17 Apr 2021 23:12:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618693942;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zX+ME2JpZ7LUdQED+UYu2RcwOfWqiRotffoXIgZAlGY=;
	b=jTE9eJkrxcYFac1RuHuwaPUb5EGSJGJiRzD0jIy4VJaB2WxKEX5Yym1v5EWbdLiIcOuitX
	q26l0vNHBqVHxMYW245XeEnNDCwLbSzkr31D0FJl4z/f5E4KTyRdxt9Yqt4hymqcBDB/d9
	dXFD7TBlNPYOzrPKC35IffQDnwJJgBQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-330-_w46RXaYMku4lw6gfW93yw-1; Sat, 17 Apr 2021 17:12:20 -0400
X-MC-Unique: _w46RXaYMku4lw6gfW93yw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C324C802B5B;
	Sat, 17 Apr 2021 21:12:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CC2D55C6B8;
	Sat, 17 Apr 2021 21:12:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 48CF544A5E;
	Sat, 17 Apr 2021 21:12:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13HLBnsL022323 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Apr 2021 17:11:49 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EEF681004162; Sat, 17 Apr 2021 21:11:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EA35811301E0
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 21:11:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 961F4811E93
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 21:11:44 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-357-X-IXt2LEO46-WZfxqe2p2A-1; Sat, 17 Apr 2021 17:11:42 -0400
X-MC-Unique: X-IXt2LEO46-WZfxqe2p2A-1
Received: by mail-qk1-f174.google.com with SMTP id d15so19417539qkc.9
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 14:11:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=Q9l/RSCGPtzi7fp1csZXw34VWGCX7EysMviM4qL/SSQ=;
	b=CqaCchBXsJpkVIljmCS9KFGGUAKFvZzPgd8ppZzFEZeyFez2NdQPjtDmtp83duTygp
	c26OOqQCFVF/XH0/DIEyxIVgIlf7YhMBexNVi32W9EynsCsXwek93n0RMUsQ3yDsbepy
	rn/ARtbw2jZDLUVGQHY/wylv8jjZlNKJ7gLB6yyE/ItZBXkfMBrYnvy2YwSZ74lLz09n
	d3IVnOAl1d9C4rPy9dBF2sW4VJYhUB2pYX7ZxTpLLqTFaBjbrlGFr4bSwaSSZyb7iCeN
	UZZq0k/k/iF27BUrieYjo5J8ypJMxqZXT9JCc/u5bQ3Nz61HXhqdf2g4YJAZxy1k5KpN
	E+tQ==
X-Gm-Message-State: AOAM530lD73I6zbYCw+EajLLh3E1AKYdktyUcdaAJrVS4idITSXt8EsW
	ukV9KCcrem27/rxRXhO4Iwzh1kbmPc2jvlzxynIT99qlYfs=
X-Google-Smtp-Source: ABdhPJxWwTfswNnYaqZkwG2i+Kuzw1OkcvhL+K5+e+vax2APppyuJiIpGIjIsnw3v8lHz0adBXBDyzwq9PM337pdJmY=
X-Received: by 2002:a37:63ce:: with SMTP id x197mr5388971qkb.341.1618693901860;
	Sat, 17 Apr 2021 14:11:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:eb4e:0:0:0:0:0 with HTTP; Sat, 17 Apr 2021 14:11:41
	-0700 (PDT)
In-Reply-To: <PH0PR14MB4296CF10E5C271F1BA6B10C3C84B9@PH0PR14MB4296.namprd14.prod.outlook.com>
References: <161860978196.7.10178583994303054677.5934759@slmail.me>
	<161861134168.7.8725593548099427193.5935596@simplelogin.co>
	<161861745773.6.10221248550300079442.5937580@slmail.me>
	<2d84575-10dc-a8b6-d46d-60773d4fafc8@hubert-humphrey.com>
	<161861948053.7.16244801545361401537.5938331@simplelogin.co>
	<161862148227.7.18281104954975477453.5938888@slmail.me>
	<161862282677.7.2491104836224406595.5939316@simplelogin.co>
	<161862548310.8.16722362767692903606.5940024@slmail.me>
	<161862814448.7.6659849185338098597.5940568@simplelogin.co>
	<161863093723.7.7991468665084930791.5941189@slmail.me>
	<PH0PR14MB429642F093EFD405F66B6FE7C84B9@PH0PR14MB4296.namprd14.prod.outlook.com>
	<Pine.LNX.4.64.2104171340500.2504722@server2.shellworld.net>
	<PH0PR14MB4296CF10E5C271F1BA6B10C3C84B9@PH0PR14MB4296.namprd14.prod.outlook.com>
Date: Sat, 17 Apr 2021 21:11:41 +0000
Message-ID: <CAO2sX30YXDpUgbUXuA-r9UjBhkJz=JEDbV+gaRbCXO5tKKdrEg@mail.gmail.com>
Subject: Re: SL's response to all inquiries re: Readspeaker voices
To: blinux-list@redhat.com
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

I don't use an e-mail client, be it Thunderbird or something else, and
don't really get the point of them, but best I can tell from a quick
Google search, Mozilla has been treating Thunderbird like the
proverbial red-headed step-child for nearly a decade and yet it
remains the dominant graphical e-mail client under Linux best I can
tell, retaining a sizeable number of users even among those who have
ditched Firefox in favor of Chromium. The future is hard to predict,
but I have a feeling that, even if Mozilla drops their involvement
altogether, the worse that's likely to happen to Thunderbird is
someone pulls a LibreOffice, releases an initial version of a new
client that's identical to the last Thunderbird version in all but
name, and a new organization is formed to be the nominal owners of the
fork.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

