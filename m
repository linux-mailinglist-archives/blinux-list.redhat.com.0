Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2915FAF55
	for <lists+blinux-list@lfdr.de>; Tue, 11 Oct 2022 11:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665480535;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/RRFIcm5bgL/EtAuWGun0BkUtfMsKe9bHcDwlRfqWi8=;
	b=PIIfZ7uqLTb+3JP9qGqrgvs2yBoOyOrqE59z61W+9NzmHH3BSq7O8z+EOjCsZ2ev3Fyna/
	uP8vDR5JeDEvKkfZiy054qhmMrwwb/Oy5gN8SsFAh9amH91oJ4wf4Xz3/bhCHMQsih2hmN
	BxO5GhuozRdYbV2lqmCJPeyQZtlnmrI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-527-5ITO5jbkPBG25166UNEKUw-1; Tue, 11 Oct 2022 05:28:52 -0400
X-MC-Unique: 5ITO5jbkPBG25166UNEKUw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2E474185A7A3;
	Tue, 11 Oct 2022 09:28:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id EF128112D402;
	Tue, 11 Oct 2022 09:28:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 230B21946A48;
	Tue, 11 Oct 2022 09:28:45 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
X-Spam-Processed: mail.comproom.co.uk, Tue, 11 Oct 2022 10:24:32 +0100
 (not processed: message from trusted or authenticated source)
To: <blinux-list@redhat.com>
Subject: New user question
Date: Tue, 11 Oct 2022 10:24:30 +0100
MIME-Version: 1.0
Thread-Index: AdjdUtBhSAHv63j6Riycr3zOhX+OmQ==
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.7301.1665480524.6076.blinux-list@redhat.com>
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
Content-Language: en-gb
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

I know the basics of Linux, but my question is this.

 

I am totally blind and want an accessible Linux. I have always hosted my own
websites using Vultr, https://www.vultr.com.

 

I currently have Windows Server 2012, but rather than upgrade Windows, I
thought I might try to host my sites in Linux.

 

I am running Apache 2.24, MySQL and PHP etc.

 

All this to ask what is the best Linux distro to install if I deploy a Vultr
virtual server? I have access to several distros, and would probably install
a command line version only, rather than use a Linux GUI, but what distro
would you guys recommend?

 

Many thanks for any help.

 

All the best


Steve

 

--

To subscribe to our News and Special Offers list, go to
<https://www.comproom.co.uk/subscribe> https://www.comproom.co.uk/subscribe

 

Computer Room Services

77 Exeter Close

Stevenage

Hertfordshire

SG1 4PW

T: +44(0)1438-742286

M: +44(0)7956-334938

F: +44(0)1438-759589

E:  <mailto:steve@comproom.co.uk> steve@comproom.co.uk

W:  <https://www.comproom.co.uk> https://www.comproom.co.uk

 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

