Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1CF58C57C
	for <lists+blinux-list@lfdr.de>; Mon,  8 Aug 2022 11:21:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1659950510;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=btBQ9i1bVa9ycyHuuobCLHDoUvOjI3xIm87Z3vSQFfQ=;
	b=QbWdAaL3tElg6HkBXqBDiyt6+i8mEwwTTs8PyHYAS4NhzYXTVvZ2BKfzHGtSsAioKR7Qz8
	2XAPgzsNQYbEr3aW0ei2bws5FyVO3i5EgoWvk1ffk+r3Ur1YiJ7Q6NxgMIBV6BxnTyVAwn
	Ka1bOQVn600b3BpFpR9BmJlEugl7134=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-608-QMOJ-ckqN52R3nBe-soORA-1; Mon, 08 Aug 2022 05:21:46 -0400
X-MC-Unique: QMOJ-ckqN52R3nBe-soORA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9E55585A58C;
	Mon,  8 Aug 2022 09:21:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0462A2166B2A;
	Mon,  8 Aug 2022 09:21:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5B6B01946A5B;
	Mon,  8 Aug 2022 09:21:44 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 8 Aug 2022 11:12:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: Console based email and Gmail, any luck?emai
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.40282.1659945837.111210.blinux-list@redhat.com>
In-Reply-To: <mailman.40282.1659945837.111210.blinux-list@redhat.com>
Message-ID: <mailman.40042.1659950503.111205.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I think it is difficult to help you if you cannot say to what extent did 
those Python scripts you get fail to adrress your issue. The questions 
that immediately come to my mind are did you ever use Mutt with any 
other email provider such that you see its weakness in Gmail? What 
happens if you use an app password? As far as I know, at no time did 
Mutt fail to work with Gmail as long as you had an app password. When 
looking for help, it is better to tell people where you are having 
difficulties rather than being vague and too general. Most people on 
this list are not having this problem with Mutt or even any other 
console-based email client.




On 8/8/2022 10:03, Linux for blind general discussion wrote:
> As it says, any luck with console based clients? All I'm getting is 
> being sent in circles with non working Python scripts and vague blog 
> pages.
>
>
> I'm trying to get Mutt or Neomutt to still work with Gmail post nuking 
> of passwords, but...I can
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

