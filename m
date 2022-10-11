Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA8E5FBD0C
	for <lists+blinux-list@lfdr.de>; Tue, 11 Oct 2022 23:36:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665524187;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=m46SjP2eqlSDDdlROOAlhVsdtvxslxn8opLLQ0oo3Kg=;
	b=Hx92MbOSB64e2A7OmiDJUyVYaLV/Lol+bf3ZCDt6iPOldKvUbIV98UICPfbeacHs6mfjcx
	m2DZGND0id+yyCZmQFzC5Rcyh675SvRn94MUUGEd3vZkWnFM0Z0uxARmwkP1B8jp5X04Uk
	QBqoi0f+q0RVm9k+zJTfBz4QtVJw6iU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-528-w3rVDYxZO92ftJFfHP0Teg-1; Tue, 11 Oct 2022 17:36:23 -0400
X-MC-Unique: w3rVDYxZO92ftJFfHP0Teg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 944EC185A794;
	Tue, 11 Oct 2022 21:36:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 59AE340C6F75;
	Tue, 11 Oct 2022 21:36:16 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id CE83019465A3;
	Tue, 11 Oct 2022 21:36:15 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 11 Oct 2022 17:35:58 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: New user question
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.7301.1665480524.6076.blinux-list@redhat.com>
In-Reply-To: <mailman.7301.1665480524.6076.blinux-list@redhat.com>
Message-ID: <mailman.7019.1665524175.6078.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I run several servers, a couple on SKB-Enterprise, which is very 
inexpensive, and a couple more on the Oracle Cloud that run at no cost. 
On the SKB-Enterprise servers, I choose Ubuntu 20.04 with ISPConfig as 
my control panel that allows me to configure email and websites very 
easily and does most of the heavy lifting behind the scenes in a secure 
way, although I also do other sysadmin stuff over ssh or sshfs. My 
Oracle Cloud servers run Ubuntu 22.04, and I don't do anything with 
ISPConfig on those, since it doesn't yet support 22.04, and even the 
newest Debian is older than I would like. In any case, the Oracle Cloud 
free tier can't be beat, with 4 2GHz ARM A72 processor cores and 24GB 
RAM, along with 2 AMD servers with 1 virtual core each and 1GB of RAM, 
with a total of 200GB of disk space between them, all at no cost 
whatsoever. The only catch is that you choose a home region when you set 
up and can't change it later, so I would suggest New York or Amsterdam, 
being two of the best connected regions in the world. In any case, the 
server provider probably won't answer your question, but for the OS, I 
would say that Ubuntu if it is available will give you the best 
compromise between stability and security of the OS and relatively 
younger age of the software, although upstream Debian is probably my 
second choice, since it has been updated a bit more frequently in recent 
years; just be sure to enable backports.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

