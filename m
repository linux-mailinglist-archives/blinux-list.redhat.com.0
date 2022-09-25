Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 104F35E95B3
	for <lists+blinux-list@lfdr.de>; Sun, 25 Sep 2022 21:33:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1664134421;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Xc2bPM0e6SYT/R25ay+2VskIZi9x7mnCHFSMJEIrT7E=;
	b=SIDDdHbzoUN4f6gZvbrFwirPHmth4FSVJ92GB3SHa/uV5bb9Yh6vkrBSTrt+iy4KtdDRXf
	dHvvhOwMtPmrRtFjc4o9tHLMoEhyWTFFDlqR7J36cJa2z2fDjZ9h31rBDTB8Psww7StdLX
	qkAEpY2FDTFQZYVuF+k31mGO1WjawiA=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-203-xtIMFR-7PBGZ-i6s4EDfXA-1; Sun, 25 Sep 2022 15:33:38 -0400
X-MC-Unique: xtIMFR-7PBGZ-i6s4EDfXA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3447B3C025BA;
	Sun, 25 Sep 2022 19:33:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1D21D40C2065;
	Sun, 25 Sep 2022 19:33:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 523C219465A3;
	Sun, 25 Sep 2022 19:33:32 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 25 Sep 2022 15:33:26 -0400 (EDT)
To: Sebastian LaVine <mail@smlavine.com>
Subject: Re: slack in Ubintu?
In-Reply-To: <CN5OB5WYJNS2.34IEXFK1NRMYF@archlinux-x220>
References: <Pine.LNX.4.64.2209251225030.2246441@server2.shellworld.net>
 <87fsgf7472.fsf@aol.com> <CN5OB5WYJNS2.34IEXFK1NRMYF@archlinux-x220>
MIME-Version: 1.0
Message-ID: <mailman.3037.1664134411.6076.blinux-list@redhat.com>
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
Cc: Linux for blind general discussion <blinux-list@redhat.com>,
 blind_linux_users <discuss@blvuug.org>, Hendursaga <hendursaga@aol.com>
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Sebastian,
This is a profoundly intelligent question.
Interestingly enough the Web access initiative list, which discusses and 
tracks action around wCaG and other universal design policies talked about 
this recently.  Tied to a case in India.
One of the most unfortunate mistakes many many many people make is to 
start with the screen reader, when in fact what makes  things work is the 
design elements.
Progressive enhancement where one starts with a good old fashioned html 
floor, then incorporates  other  elements to which browsers created for 
those elements can draw upon, is the most inclusive path to screen reader 
function.
That is because  a screen reader, and there are scores of them across 
platforms  is basically at its best a talking monitor and keyboard. 
Speaks when  keys are struck, responds if an enter key is hit, reacts if 
the site in turn is coded to properly react to this first and foremost.
Web  Access content guidelines are technology certainly browser agnostic. 
Meaning they focus on Interaction, not tool..so you do not end up 
expecting a person  to be disabled according to a specific definition. 
Inclusion  is not about blindness or screen readers, and more than those 
experiencing sight loss benefit from, and use screen readers.
Instead of asking about screen reader tools, perhaps consider exploring 
progressive enhancement web design practices.  that way not only screen 
readers work, but voice browsers and augmented keyboards too.
Does that resonate?
Karen



On Sun, 25 Sep 2022, Sebastian LaVine wrote:

> On Sun Sep 25, 2022 at 1:29 PM EDT, Hendursaga wrote:
>> I generally just use the browser client, I'm afraid, but sclack[1] was the
>> last TUI client I tested, though I doubt it's very screen-reader friendly,
>> unfortunately.
>
> Do you happen to know of any resources on screen-reader friendliness for
> TUIs in general? Is there any particular way screen-readers know how to
> distinguish from actual text and "graphical" elements? Or a way that TUI
> program developers can accomodate that?
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

