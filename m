Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C90B4BBC9F
	for <lists+blinux-list@lfdr.de>; Fri, 18 Feb 2022 16:57:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645199821;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=o+tMEWab6cO+GSlrg+5N0ZE0SMR3z4+WZxshB35zbsc=;
	b=URr2QHIPDya6iA4nvYzqyA+mqwx6jqiIZYUarWpUXkorlyDne8jt8+JlO00L31xftl/saf
	wrA1rUPnwvcXTFoR4cBbo7D/DxdRskciYM5Z0LFyiv6HSBfW+6rP7PLmNZSXshlDVn+bnb
	L4h/bX7j3WFx+r4vmn7gVch2wKGf94I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-374-AsYmnBosORyj8DwPNYxCnA-1; Fri, 18 Feb 2022 10:56:57 -0500
X-MC-Unique: AsYmnBosORyj8DwPNYxCnA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C7572814245;
	Fri, 18 Feb 2022 15:56:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 207447CD65;
	Fri, 18 Feb 2022 15:56:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A799A1832DA0;
	Fri, 18 Feb 2022 15:56:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21IFujiA016910 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 10:56:45 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 710BB407DECB; Fri, 18 Feb 2022 15:56:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6CD17407DEC3
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 15:56:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 553DA185A79C
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 15:56:45 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-550-As5HOAyCNU2tPNqeuT9nQQ-1; Fri, 18 Feb 2022 10:56:42 -0500
X-MC-Unique: As5HOAyCNU2tPNqeuT9nQQ-1
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4K0bsj6qWkz3jBZ
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 10:56:41 -0500 (EST)
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4K0bsk0N1jz1QWf; Fri, 18 Feb 2022 10:56:42 -0500 (EST)
Date: Fri, 18 Feb 2022 10:56:42 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Mutt, how do I..
Message-ID: <Yg/Buoaqnu7K8GPO@panix.com>
References: <e2f33a0f-e33b-aeaf-90a8-8afd3e0b6d63@gmail.com>
MIME-Version: 1.0
In-Reply-To: <e2f33a0f-e33b-aeaf-90a8-8afd3e0b6d63@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If you put these two lines in your .muttrc file:
set autoedit=yes
set edit_headers=yes

Then running mutt -i file  email@address.com

will take you to an edit buffer of your favorite editor where you can
edit the message body and the headers in one big file. Be careful to preserve the
blank line immediately after the headers.


Once you finish editing the email and exit your editor, you should be 
at the mutt attachments page with the headers at the top and your
cursor on the inline attachment description, such as:

- I     1 /var/tmp/mutt-panix3-20196-19225-1671515                                                                           [text/plain, 7bit, us-ascii, 0.5K]


At that point you can edit it again by hitting the e key, or send the email by hitting y.

I have no idea how to show only unread messages in a mailbox. I usually either delete them or save each message into
an appropriate mailbox if I want to save it. e.g. bookclub, slint, speakup, etc.

Hit s after reading the email and mutt will ask you for the name of the mailbox 
in which to save the message.

On Fri, Feb 18, 2022 at 03:02:13PM +0000, Linux for blind general discussion wrote:
> Okay so...
> 
> Hopped over to Mutt as my email client. Since it uses less resources.
> 
> Now I've two main questions
> 
> 1. Currently I've a macro to do mutt email -i muttbody.txt -s subject
> 
> How would I add text to the body of an email? It just adds it as an
> attachment like mutthostname then numbers.txt instead of putting it in the
> body of the message though
> 
> 2. Is there a way I can display the number of unread messages somehow, like
> Inbox (2) like I can on a GUI client?
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

-- 
Rudy Vener
Website: http://www.rudyvener.com
Twitter: https://twitter.com/RudySalt

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

