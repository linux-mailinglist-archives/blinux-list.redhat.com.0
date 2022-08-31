Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6561B5A76F8
	for <lists+blinux-list@lfdr.de>; Wed, 31 Aug 2022 08:58:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1661929089;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mMhz341jH1aUE32K+DUtHag2yJu9L86xQd+qj5Lnhzw=;
	b=hyp3CHsLFQ/EuBhfKPbxXjHAtIq7SMPRhDirtRqQmGlbf0WWotyfUB/rTaVHyGKpt2cdYn
	li4b7SCQL3nitd/8FDkAJQWQ2lmfT3uzf3JQnKFOrVzfWbI5kZRCm1L8qfraSaTgKwnsu8
	vyPedzIqwIvQRQfnDFORvFTGWv0fS9k=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-606-NUwILGf2PfGJe6ZQvWTovQ-1; Wed, 31 Aug 2022 02:58:06 -0400
X-MC-Unique: NUwILGf2PfGJe6ZQvWTovQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BDAF029AB408;
	Wed, 31 Aug 2022 06:58:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6F92BC15BC3;
	Wed, 31 Aug 2022 06:57:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 940FD1946A4B;
	Wed, 31 Aug 2022 06:57:58 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 31 Aug 2022 08:57:54 +0200
MIME-Version: 1.0
Subject: Re: I have a question, and request?
To: blinux-list@redhat.com
References: <58F588DF-F64C-482C-A02D-E5F1EF0C664C.ref@yahoo.com>
 <mailman.2381.1661038130.10504.blinux-list@redhat.com>
 <mailman.2444.1661106709.10501.blinux-list@redhat.com>
 <mailman.2468.1661107699.10507.blinux-list@redhat.com>
 <mailman.4908.1661920206.10502.blinux-list@redhat.com>
In-Reply-To: <mailman.4908.1661920206.10502.blinux-list@redhat.com>
X-Spam-Flag: NO
Message-ID: <mailman.4818.1661929078.10498.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On 8/31/2022 4:46 AM, Linux for blind general discussion wrote:
> First the question, I am installing Fedora workstation 36 into a virtual machine on my MacBook Pro 2020. It appears that I have downloaded a live image. So the live image booted up, and did it's thing. A family member who did the reading said that there was a question install to the hard drive, or I think just
> as a live version. So far the machine has been installing for the better part of an hour and 1/2 or so. Is this normal? Should I now shut down this "light distribution and reboot the virtual machine and try and login? Any suggestions would be helpful.
>

The installation time is determined by the resources allocated to the guest.

According to [1], you should be able to install if you like the live
release.

If you reboot the VM, it will either restart in live mode or with the
distro being installed.

> Here's my request if someone on the list knows how to do this. I am in the process of changing email addresses for this list. What is the easiest way to do that.
 >

See [2].


HTH.


[1] https://getfedora.org/en/workstation/download/
[2] https://listman.redhat.com/mailman/listinfo/blinux-list


--
John Doe

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

