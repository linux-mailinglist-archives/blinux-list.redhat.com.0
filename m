Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 153AC2A4BFA
	for <lists+blinux-list@lfdr.de>; Tue,  3 Nov 2020 17:52:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604422320;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4PbU3GwYx7S2kN+lOHtIXsVEqU/WrmDnsx1qjmQuysM=;
	b=Qw5wKsTcVDdDzesdxuEJiEQUI2XsdYsCv7f0xyKXEGoQPyGPtLuZ75muoXnLVGvVDk19JA
	xt7Oz1JG7Pgc5mNSZ72tG5Vtf3TavmmO03yNoLi3j0mZ0XZaTtH3sRC+ydDwOfoG3//0kb
	RYkipXDgIU0JXFv4cXM7/GWA5na9hsU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-97-RKIA4Kn5N06UOp7uusisAw-1; Tue, 03 Nov 2020 11:51:58 -0500
X-MC-Unique: RKIA4Kn5N06UOp7uusisAw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4AD49879519;
	Tue,  3 Nov 2020 16:51:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3603F7366C;
	Tue,  3 Nov 2020 16:51:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 20909180B658;
	Tue,  3 Nov 2020 16:51:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0A3Gpgrl015479 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 3 Nov 2020 11:51:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C27F9110DBE4; Tue,  3 Nov 2020 16:51:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BBA79110DBE0
	for <blinux-list@redhat.com>; Tue,  3 Nov 2020 16:51:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D0E7B811E83
	for <blinux-list@redhat.com>; Tue,  3 Nov 2020 16:51:36 +0000 (UTC)
Received: from gateway6.unifiedlayer.com (gateway6.unifiedlayer.com
	[69.89.27.122]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-222-9sdKavwDMVeu4h-8Y2xb_w-1; Tue, 03 Nov 2020 11:51:33 -0500
X-MC-Unique: 9sdKavwDMVeu4h-8Y2xb_w-1
Received: from cm4.websitewelcome.com (unknown [108.167.139.16])
	by gateway6.unifiedlayer.com (Postfix) with ESMTP id 9F653200A4B87
	for <blinux-list@redhat.com>; Tue,  3 Nov 2020 09:56:35 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id ZyfjkLzzQDhm0ZyfjkBoHw; Tue, 03 Nov 2020 09:56:35 -0600
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:57660 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1kZyfj-001PjS-9O
	for blinux-list@redhat.com; Tue, 03 Nov 2020 09:56:35 -0600
Date: Tue, 3 Nov 2020 09:56:33 -0600
To: blinux-list@redhat.com
Subject: Re: Copying hardwrapped text into softwrapped web forms.
Message-ID: <20201103095633.4a1c02e9@bigbox.attlocal.net>
In-Reply-To: <CAO2sX33EbH0hFxy26pyJtHtaFsE=dYOfqQROrypOyvJUaCoTaw@mail.gmail.com>
References: <CAO2sX33EbH0hFxy26pyJtHtaFsE=dYOfqQROrypOyvJUaCoTaw@mail.gmail.com>
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
X-Exim-ID: 1kZyfj-001PjS-9O
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:57660
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  The easiest way I've found is to use xsel or xclip to dump
your clipboard contents and reformat with the "fmt" command, giving a
ridiculously large rewrap width:

  $ xsel -ob | fmt -w 99999 | xsel -ib

If you're using the selection buffer (pasted with middle-mouse)
rather than the system clipboard (copied with control+C, pasted with
control+V), you can remove the "b" from both xsel invocations

  $ xsel -o | fmt -w 99999 | xsel -i

I find xsel easier to use, but if you have xclip installed, the
invocation is similar

  $ xclip -o -selection clipboard | fmt -w 99999 | xclip -i -selection clipboard

or for the selection buffer:

  $ xclip -o | fmt -w 99999 | xclip -i

If you have the content in a file, you can use that as the source
instead of the system clipboard:

  $ fmt -w 99999 file.txt | xsel -ib

Hope this gives you some solutions,

-Tim

On November  3, 2020, Linux for blind general discussion wrote:
> Okay, so this isn't really about accessibility so much as a fringe
> case where what I do for accessibility causes problems for the
> sighted.
> 
> I do all of my writing in the nano text editor in a text-only
> environment and favor hardwarpped plain text files both for my own
> work and for reformatting stuff I download for offline reading.
> 
> If I want to post something I wrote online, it usually means
> switching to a graphical session, opening the text file in Firefox,
> and then copying the hardwrapped text into a text box, and
> generally, the text box and the page produced after submitting the
> form will have softwrapping.
> 
> Generally, this isn't a big deal as long as the resulting page is
> displayed on something with at least 80 characters of width, but it
> can cause choppy, uneven lines on displays that are narrower than 80
> characters, such as a phone screen in portrait mode.
> 
> Anyone know a workaround for this? I'm thinking the ideal solution
> would be a modified copy/cut command that would ignore the single
> linebreaks nano's justify command adds to hardwrap text, but not the
> double line breaks between paragraphs, but I don't know if there
> exists a Firefox extension/about:config option or an Orca function
> to do this.
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

