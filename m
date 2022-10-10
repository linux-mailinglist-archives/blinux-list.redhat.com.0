Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 94FD15FA167
	for <lists+blinux-list@lfdr.de>; Mon, 10 Oct 2022 17:50:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665417034;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KTsU1K80wE9QWeDXXPqyw7BB0Q3wquLmgj6xwFj81Lk=;
	b=NYi+0Wf2KDGOj+Nlo1yJcYUppPqdvl04MgdvNV4jjdmul2c6Rpz1I98kJBoKJbg0bsGyR4
	DRR47+mYvuG/VcVqduHdPjBoF8JWF58emna+mx/s9xTB7pN4T1x5R2IltkELMMTWVhbWqT
	S1MpYDt8M16zFTeuaZc9nif7A+rkxbk=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-110-fc0R80igPCWtzFz2sFJApw-1; Mon, 10 Oct 2022 11:50:31 -0400
X-MC-Unique: fc0R80igPCWtzFz2sFJApw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 06C7B29AB452;
	Mon, 10 Oct 2022 15:50:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A355B1121315;
	Mon, 10 Oct 2022 15:50:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 47A471946A48;
	Mon, 10 Oct 2022 15:50:29 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: Is there a Fedora Espeakup Package?
Date: Mon, 10 Oct 2022 10:50:22 -0500
References: <mailman.6271.1665338721.6083.blinux-list@redhat.com>
 <mailman.6427.1665341560.6078.blinux-list@redhat.com>
 <mailman.6276.1665342112.6083.blinux-list@redhat.com>
 <mailman.6652.1665345960.6080.blinux-list@redhat.com>
 <mailman.6499.1665347033.6081.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.6499.1665347033.6081.blinux-list@redhat.com>
Message-ID: <mailman.6875.1665417028.6075.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Does tdsr talk at log in or no?

> On Oct 9, 2022, at 15:23, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> I got tdsr working with Fedora, both on a terminal and on a tty. I do have a full MATE desktop, so I only neded to install python3-pyte
> 
> sudo dnf -q -y install python3-pyte
> 
> and then clone and run tdsr
> 
> git clone https://github.com/tspivey/tdsr.git
> 
> ~/tdsr/tdsr
> 
> and it started speaking using speech-dispatcher's default voice. I guess it does require that you have something already speaking, since blind terminal input can go wrong when you can't verify the output, but if you start from the MATE-compiz or Workstation live media, you will have something speaking and can just mount the hard drive where you installed the OS and get tdsr speaking from there. And I did manage to get tdsr speaking on a text-only tty while my desktop was already running, and I in fact had tdsr running in the terminal on the desktop at the same time, although they were not both speaking, so it looks like pipewire has matured enough to be effective now, and it seems to have fixed the problem where graphical and text consoles couldn't play sound at the same time. I also just tried playing an audio file in the text console while composing this message on the graphical console where my desktop is running, and the only problem I noticed is that once the file stopped play
 ing and tdsr gave me the command prompt, I didn't hear the last word I typed echoed until tdsr was finished, but this is a feature of speech-dispatcher, not an audio bug. Hope this helps.
> 
> ~Kyle
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

