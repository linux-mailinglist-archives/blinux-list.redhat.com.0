Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 499ED6878AC
	for <lists+blinux-list@lfdr.de>; Thu,  2 Feb 2023 10:23:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675329782;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/O8Wef3sY9L4n3kQkoMwl1Qo7VNq4IlfYx+ujjqhJqc=;
	b=iVwC2+8egijX36+kekLjZvrH0HGBqDhtrFiXon9kMNpDgPlHvd3OlTIVoyn+xzEv6Qtffr
	y25MQ6Usqii8K9Zrt/46QyflbAy6ekkFGr1n9ZkCTz43LukA1e+BEEqjgmcGu1XSfiltAj
	58GEKrCkb0dV28OjzI2+0a8EwCscCY0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-79-qTlg95daPD6m8FgLNxy6RQ-1; Thu, 02 Feb 2023 04:22:58 -0500
X-MC-Unique: qTlg95daPD6m8FgLNxy6RQ-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B15BF85A5B1;
	Thu,  2 Feb 2023 09:22:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 16133492C3F;
	Thu,  2 Feb 2023 09:22:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 680D219465B1;
	Thu,  2 Feb 2023 09:22:51 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 2 Feb 2023 09:22:44 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: Jenux repo unavailable
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.3810.1675256533.8169.blinux-list@redhat.com>
 <mailman.3624.1675287576.8173.blinux-list@redhat.com>
In-Reply-To: <mailman.3624.1675287576.8173.blinux-list@redhat.com>
Message-ID: <mailman.3766.1675329771.8174.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

This is now fixed. I never got a response to my email, however.


On 01/02/2023 21:39, Linux for blind general discussion wrote:
> Well, at time of writing the repository is available.
> Daniel's website: https://nashcentral.duckdns.org/
> Web page for all his accessibility projects:
> https://nashcentral.duckdns.org/projects.html
> The link to the ISO is in this page:
> https://nashcentral.duckdns.org/projects
> Directs links:
> ISO: https://nashcentral.duckdns.org/projects/Jenux-2023.01.17-dual.iso
> SHA512 checksum:
> https://nashcentral.duckdns.org/projects/Jenux-2023.01.17-dual.iso.sha512
>
> Cheers,
> Didier

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

