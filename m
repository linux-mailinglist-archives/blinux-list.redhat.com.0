Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 24C0020566B
	for <lists+blinux-list@lfdr.de>; Tue, 23 Jun 2020 17:56:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592927765;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rttQWEr6ps8AZKfOaKFCLVLhcF4Udge7lm7hkNGI73k=;
	b=Ss5ZL2qRwIFsyVadBDJmcmBpFVJ7rnOb1QDfbokfNRKwetqG6a3od8jC5HHc0jkMbbCTiP
	GRB1MY8i+OM5l0cqVJsWwE61fY5f9l+8RMWBWb6ADe5bsbAscTLykUL9y/tfV33Kvgoa/c
	zFjVqmFVvonWYnR3+1vSXHgpRarukdI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-20-zY_B9_q9PBCy6T1WdEugXA-1; Tue, 23 Jun 2020 11:56:02 -0400
X-MC-Unique: zY_B9_q9PBCy6T1WdEugXA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 40B03EC1A3;
	Tue, 23 Jun 2020 15:55:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3E9E860C1D;
	Tue, 23 Jun 2020 15:55:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4FBC4833D2;
	Tue, 23 Jun 2020 15:55:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05NFtj0w023609 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Jun 2020 11:55:45 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 972E2217B437; Tue, 23 Jun 2020 15:55:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 928F4217B436
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 15:55:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4F398108C268
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 15:55:43 +0000 (UTC)
Received: from gateway10.unifiedlayer.com (gateway10.unifiedlayer.com
	[69.89.24.105]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-393-nFuxWqslPmWIbOiWkIZT7A-1; Tue, 23 Jun 2020 11:55:40 -0400
X-MC-Unique: nFuxWqslPmWIbOiWkIZT7A-1
Received: from cm1.websitewelcome.com (unknown [192.185.0.102])
	by gateway10.unifiedlayer.com (Postfix) with ESMTP id BFB46200BD861
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 10:34:38 -0500 (CDT)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id nkwYjRm4FwLnQnkwYjq3Xg; Tue, 23 Jun 2020 10:34:38 -0500
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:34898 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1jnkwX-002qFg-LW
	for blinux-list@redhat.com; Tue, 23 Jun 2020 10:34:37 -0500
Date: Tue, 23 Jun 2020 10:34:36 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: off list questions
Message-ID: <20200623103436.1a44ce95@bigbox.attlocal.net>
In-Reply-To: <C89E4DED-1132-45C0-BE16-E42E2E9B6ACD@gmail.com>
References: <DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<20200621074757.GA2690@rednote.net>
	<9A1F6B85-D0FF-4CC3-9DB1-8585F92EB74E@cfcl.com>
	<F216610A-50CE-4BE6-A7B5-C1C5DA236210@gmail.com>
	<020601d64807$b2b22a80$18167f80$@gmail.com>
	<D32CF46C-F003-4E5C-B518-B78451F8909A@gmail.com>
	<84E95FBD-9BD7-4D68-A1AB-4C63B4526038@pipkrokodil.se>
	<EDF1563A-2FF3-4966-92C9-0D56C440E445@gmail.com>
	<0BA842DF-6DEA-4352-A635-B447ECB597E2@gmail.com>
	<CAO2sX31aVwswLgsx=JjjjLGw8waC+hvBBVag60UBB5JbSFRYnQ@mail.gmail.com>
	<20200622.140639.018.15@192.168.1.130>
	<004701d648e3$0ac2e850$2048b8f0$@gmail.com>
	<CAO2sX31=Tkng2Zms9yLK7gVEyz+HKHDck5PEbTqL4xCe+diK=w@mail.gmail.com>
	<e606c651-4507-ad22-6a20-53753364f1f5@verizon.net>
	<C89E4DED-1132-45C0-BE16-E42E2E9B6ACD@gmail.com>
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
X-Exim-ID: 1jnkwX-002qFg-LW
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:34898
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Mimecast-Spam-Signature: yes
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  Because the list anonymizes senders' email addresses,
you'd either have to reach into the archives (if both parties have
been around sending messages on the list long enough) or communicate
the email address voluntarily either in the body of the message
(such as "you can reach me at blinux.list@thechases.com"). At least
assuming the mailing-list manager doesn't strip out email addresses
from the body as well.  To test, the previous quote should read
"blinux dot list at the chases dot com" for my Blinux mailing-list
email address.  All of this stemmed from some spammers harvesting
email addresses from the mailing list and sending explicit pictures.

Alternatively you could communicate via another medium such as "I am
either @gumnos or @ed1conf over on Twitter, where you can send me a
direct-message."  Or use a trusted 3rd party (e.g. you could send me
your email address directly now that you have ways to contact me
off-list, and then request that the other party contact me directly
at the same address and I can then send the messages directly
off-list.

But it requires the consent of the other party with whom you want to
communicate.

-tim

On June 23, 2020, Linux for blind general discussion wrote:
> Hello Al and everyone else.
> How may I write to someone, if I want to explore a linux topic with
> someone off list?
> 
> > On Jun 22, 2020, at 8:03 PM, Linux for blind general discussion
> > <blinux-list@redhat.com> wrote:
> > 
> > My objection to using "literally" figuratively is that we then
> > have to find a new word for literally.  In the example here,
> > "exploded" is enough and is figurative anyway.
> > 
> > 
> > I'll skip the other stuff, and take a second of amusement that
> > this became a topic on a Linux list.  (Then again, computers are
> > quite literal--in their numeric fashion.
> > 
> > 
> > Best!
> > 
> > Al
> > 
> > 
> > On 6/22/20 6:47 PM, Linux for blind general discussion wrote:  
> >> Yeah, I don't really get the objection to the word "share" in the
> >> context of telling someone about an experience, and while saying
> >> someone has issues is vaguer than saying someone's nuts, I don't
> >> really see such as euphemistic... granted, someone having issues
> >> could just as easily refer to everyday stress and/or bad luck.
> >> 
> >> I'm also okay with the word "literally" being used
> >> figuratively(e.g. saying someone literally exploded as
> >> metaphor/hyperbole for a fit of anger).
> >> 
> >> Then again, perhaps my inner linguist is just more of a
> >> descriptivist than a prescriptivist.
> >> 
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://www.redhat.com/mailman/listinfo/blinux-list
> >>   
> > 
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list  
> 
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

