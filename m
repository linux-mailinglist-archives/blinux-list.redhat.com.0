Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7365B6F0B24
	for <lists+blinux-list@lfdr.de>; Thu, 27 Apr 2023 19:42:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682617356;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tMHNBD+QmfCDXmCYd8tPldJhX71BrxHX+v9k+uLifAE=;
	b=hFASffBQJyyLpvYAAJE7/H/3hBJ5eRGA0QsKyEzPzOVEHbyoN1kI4SKKY5OMcAfvPSCV8a
	oD0nDIJyx1U5J51Xk2mbg09XnMxhOZG7cJIi4/Ddhz5ITZ2PnX9f1XnJWkRKN9E4p9f1PW
	ysJdzdW00qh+cFaJVaOIWo+opc45/1A=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-486-IktQ5KT3PLOXtCw1ImGMPQ-1; Thu, 27 Apr 2023 13:42:34 -0400
X-MC-Unique: IktQ5KT3PLOXtCw1ImGMPQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9EC3B85A5A3;
	Thu, 27 Apr 2023 17:42:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 015352027043;
	Thu, 27 Apr 2023 17:42:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 94D591946A52;
	Thu, 27 Apr 2023 17:42:30 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 27 Apr 2023 13:42:25 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
To: blinux-list@redhat.com
References: <mailman.2214.1682605732.2351818.blinux-list@redhat.com>
 <mailman.2227.1682609071.2351818.blinux-list@redhat.com>
 <mailman.1971.1682616668.2351821.blinux-list@redhat.com>
Subject: Re: Two Arch beginner questions
In-Reply-To: <mailman.1971.1682616668.2351821.blinux-list@redhat.com>
Message-ID: <mailman.2049.1682617349.2351826.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"


On 27/4/23 13:31, Linux for blind general discussion wrote:
> You don't have to do initial login in graphical mode and second is if
> graphical mode develops a problem you can still login in console and get a
> chance to fix the problem.  Graphical user login if a problem develops,
> it's time to reinstall the system if the problem prevents login.

Actually, you can reboot the system into rescue mode in that situation 
and obtain a root shell prompt.

I had to do this recently due to an error on my part that prevented all 
login attempts (whether graphical, on the console, or via ssh).

I also found out that there is an option to run a debug shell on a 
virtual console, which is started during the boot process. To do this, 
run "systemctl start debug-shell", and remember to remove it when it's 
no longer needed, for security reasons.

I've been using Linux since the late 1990s, and as far as I can recall, 
I've never had to reinstall a system. I came close to that point once, 
but I decided that I wanted to change distributions anyway.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

