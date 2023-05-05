Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E01B36F836E
	for <lists+blinux-list@lfdr.de>; Fri,  5 May 2023 15:04:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1683291861;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RWbwWIRZf8X8zZ8BIOILga/5XATzCoorSRUdgq06iso=;
	b=LCmV81JOuHNhXyeWLjzp4nGlGPwzdrjlreWaifKM/oPQytZqiWlRkdJjepbA56DVWPVA3T
	Ot9DshXx6J7pfdVF9B6EFhfc1cRd4ZwGnnIz+qC3wuumHPXbbZvXBbWQHHKPAIPEKWOXwf
	w22z6CdIdZrFD6iw83HIY/od+Gj0deM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-161-bwg1-MguNAKCP5svlfX-Yg-1; Fri, 05 May 2023 09:04:18 -0400
X-MC-Unique: bwg1-MguNAKCP5svlfX-Yg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 72081100F64F;
	Fri,  5 May 2023 13:04:16 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 57942492C13;
	Fri,  5 May 2023 13:04:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id AC8481946A4C;
	Fri,  5 May 2023 13:04:12 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 5 May 2023 13:04:00 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Anything dmenu-like?
References: <mailman.1902.1683269376.290943.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.1902.1683269376.290943.blinux-list@redhat.com>
Message-ID: <mailman.1990.1683291851.290943.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  Does it matter if it's a CLI application?  The accessibility
of your terminal may play a greater role, but you can use FZF (fuzzy
finder) which should be available in most repos.  If you wrap it
in a shell function, it should be pretty straightforward:

   e() { p="$(find $( echo $PATH | tr : ' ') -maxdepth 1 -type f -perm +111 | fzf -d / -n-1)" && "$p" ; }

This lets you type "e" and hit enter at the CLI, and fzf will show
you all the executibles in your $PATH, you can type using fuzzy
searching, and once selected, you can hit enter to run the program.

Not sure if that's sufficient for your needs, but should give you
something to start with.

-tim

On 2023-05-05 07:49, Linux for blind general discussion wrote:
> Is there anything close to dmenu that's useable with Orca? I mean that has a
> search and fuzzy matching, as well as how dmenu operates and is lightweight?
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

