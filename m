Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 741A0502B3E
	for <lists+blinux-list@lfdr.de>; Fri, 15 Apr 2022 15:46:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650030414;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9cZbOntC3Xx43l6W2xhRAFyQLJNOQz4nmtoVbYIayuU=;
	b=Fu2KCVeHM7GJmm/2JAk3dJc97fZZlKwP64S4ZYjDcLCDzue7Sj3GhWW3GWmM9hZUaqAkEd
	LrjjepLetGZke4D30up0UHPqJ39NIXWcJGWT1FyMNQ7OvdpgE69bp85oWSi83f8tLmUL06
	Mbj3HqFAJa/02uqVFLLyPdB9oLffro4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-554-mODXJpBrNgW_QV5xgkN-Dg-1; Fri, 15 Apr 2022 09:46:51 -0400
X-MC-Unique: mODXJpBrNgW_QV5xgkN-Dg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9B853833960;
	Fri, 15 Apr 2022 13:46:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id F0BF840EC01D;
	Fri, 15 Apr 2022 13:46:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 890881940352;
	Fri, 15 Apr 2022 13:46:48 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 15 Apr 2022 14:46:41 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: mailing list privacy, etc.
References: <mailman.8531.1649969333.111209.blinux-list@redhat.com>
 <mailman.8798.1650027901.111201.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.8798.1650027901.111201.blinux-list@redhat.com>
Message-ID: <mailman.8504.1650030408.111205.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

To be fair the reason I don't put my name is years ago I did on a forum, and I got told to knock it off, mostly because people could tell who I was due to my writing style.

I'm trying out things with signatures. Mine's down below the footer for the list, because client reasons and I'm seeing if I can move it up above the quoted text. So if you want to know who wrote something, skip to the end of the footer. Not idea, but, y'know, best I can do right now

Jace. Check the signature at the end of the footer. My words are here. My signature isn't!

On Fri, Apr 15, 2022 at 03:03:15PM +0200, Linux for blind general discussion wrote:
> 
> Just my observations though about the anonymity of this list:
> 
> 1. Those who aren't brave, but flamy never write their names.
> 2. Those who are confident and helpful often do so, and I can count only
> six, not necessarily by rank: Devin, Kyle, Tim, Karen, Didier, and Rich Morin. 
> 3. Because of that, threads on this list are exciting and often generate
> more responses than say orca mailing list.
> 4. There are people here who impersonate others. A case in point is
> someone who calls themselves Didier, perhaps that is his or her given
> name--though I have my doubts about that as well, <smile>.
> 5. So because I am not on the list on item 2, I enjoy this list as it
> is. I don't like spam, and prefer anonymity. 
> 
> 
> 
> Linux for blind general discussion <blinux-list@redhat.com> writes:
> 
> > I'm in violent agreement with Didier's feelings about confusion between posters in this mailing list.  Reading completely anonymous postings and trying to figure out whether and how they relate to previous postings is a real drag.  That said, I'm open to various ways it could be resolved.
> >
> > Regarding posters' desire to be anonymous, I'll point out (again :-) that it would be fine for posters to use some sort of nickname, pseudonym, etc.  It only has to be unusual enough to let the reader tell various posters apart.  So, for example, "Fred" isn't very useful, but "Fred123" or even "abc123" would work just fine...
> >
> > - Rich Morin
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

-- 
Jace's words are up there. Quoted and old messages below this point

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

