Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3724F7229
	for <lists+blinux-list@lfdr.de>; Thu,  7 Apr 2022 04:38:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649299118;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yxmZC7wN5vjYn/r1b2nk1BRsMq/KRyjwgobAQaJesis=;
	b=PhlZitc9oBFDnlltoAjf5r2GhQqZGusZCinGq3dcO8hvC2XQZUFA6mLr21d1ReQ+fveRay
	05sgDFYrXvuVFMJNp5gxJFh6xls93VYxkASwPV7KHJV/2lZNkp+c9w0pFhaBVx6csdUmBY
	tz2YDlzezEui0+4xrgq2fFDf9KHIo2Y=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-452-Okd1tMVAO1Co8euqZU2fGg-1; Wed, 06 Apr 2022 22:38:35 -0400
X-MC-Unique: Okd1tMVAO1Co8euqZU2fGg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 203833802122;
	Thu,  7 Apr 2022 02:38:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C1B55407DEC5;
	Thu,  7 Apr 2022 02:38:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 39951194036C;
	Thu,  7 Apr 2022 02:38:28 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 6 Apr 2022 22:37:35 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: different desktops
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.6893.1649230241.111206.blinux-list@redhat.com>
 <mailman.6722.1649237413.111209.blinux-list@redhat.com>
 <mailman.6967.1649240845.111210.blinux-list@redhat.com>
 <mailman.6938.1649249456.111201.blinux-list@redhat.com>
 <ca820abb-dbb3-60c5-39c3-5e316b483ecf@free2.ml>
In-Reply-To: <ca820abb-dbb3-60c5-39c3-5e316b483ecf@free2.ml>
Message-ID: <mailman.7030.1649299107.111208.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Just having a look at Cinnamon on Fedora 35. It's not too bad, and I do 
like the alt+f1 workspace switcher. Although I can't arrange my 
workspaces on screen in a 3-by-3 grid the way I like them, it allows me 
to press alt+f1 and then a single digit to go to the workspace with that 
number. I can also navigate using the arrows to the workspaces once I do 
get 9 of them, and they are in a 3-by-3 grid in the switcher. It appears 
that I can interact with notifications in much the same way I would with 
GNOME, and this is largely accessible to Orca. There's lots of flat 
review stuff I need to do, but I don't mind that too terribly much. The 
main problem I'm having is that I don't know how to access the panel or 
panels. Alt+control+tab just seems to switch between application windows 
in much the same way as alt+tab. If I can't get that figured out soon, 
I'll probably stay with MATE here.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

