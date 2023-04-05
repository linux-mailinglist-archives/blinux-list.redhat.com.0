Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B466D8172
	for <lists+blinux-list@lfdr.de>; Wed,  5 Apr 2023 17:17:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680707849;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1Ji0VxkXNR/OrolsfFVIkyqI1jufpaqwdB28T4iTl0A=;
	b=Z+FbNdGh6txLuhcooJy6iuVUeoA8JML/9sPexxHQclp/PTr/Nxf9XiBpUAlAwSSQKw3fi3
	H6G0mgzzYS5xgI1TiJwqkotquY6wo8kkbkuT1EylHWLeCliYhHouoXgOajmcr5Wbqavh37
	yxjWAkEA21kGFaWkhXUvzU46aNt7BaA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-526-NwlFPvDTPdWDYxoTL2thPQ-1; Wed, 05 Apr 2023 11:17:26 -0400
X-MC-Unique: NwlFPvDTPdWDYxoTL2thPQ-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C52B1858289;
	Wed,  5 Apr 2023 15:17:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0D44B492C18;
	Wed,  5 Apr 2023 15:17:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C646219465A4;
	Wed,  5 Apr 2023 15:17:10 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 5 Apr 2023 11:17:00 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
To: blinux-list@redhat.com
References: <mailman.1235.1680685726.558769.blinux-list@redhat.com>
 <mailman.1949.1680706766.558770.blinux-list@redhat.com>
Subject: Re: Debian beginner questions/looking for a good rolling distro
In-Reply-To: <mailman.1949.1680706766.558770.blinux-list@redhat.com>
Message-ID: <mailman.2039.1680707830.558774.blinux-list@redhat.com>
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


On 5/4/23 10:59, Linux for blind general discussion wrote:
> Among the major distributions, I would mention mostly Arch and OpenSUSE
> Tumbleweed as truly rolling distributions.

Yes, exactly. I've used Arch Linux and found it to be relativey 
reliable. Support for screen readers has been integrated into the 
distribution, including the live version used for installation.

Arch Linux also has an excellent wiki (very helpful as a source of 
documentation even if you aren't an Arch user).

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

