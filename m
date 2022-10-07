Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 439C95F7C97
	for <lists+blinux-list@lfdr.de>; Fri,  7 Oct 2022 19:57:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665165420;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mjUrZTN8Cjm9te3rKKsZxIS9LNm4rsK/YmD6QfPh/EY=;
	b=Lx8fiEg+Ed6S3DBEDQG2l5PryKa3cibRjhvwSjdQ7tUsPHsEaaTeh16pG2zE9d27zBIn96
	OgKkmWVH1NF8fQCLX6piNjtBonfe6wckqhn42go5G8nPKybQ0Puy1hdWfazJ3qUN/0ZAFz
	423oWirap+vww3m1+/3oMZZ29/sI3so=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-437-Cxxe57x9MB2khpEFPHncsQ-1; Fri, 07 Oct 2022 13:56:56 -0400
X-MC-Unique: Cxxe57x9MB2khpEFPHncsQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 920E3185A7A4;
	Fri,  7 Oct 2022 17:56:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B1EA740C6F9F;
	Fri,  7 Oct 2022 17:56:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E54FB1946A69;
	Fri,  7 Oct 2022 17:56:50 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 7 Oct 2022 13:56:01 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: tdsr
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.6158.1665083042.6081.blinux-list@redhat.com>
 <mailman.6381.1665083367.6082.blinux-list@redhat.com>
 <mailman.6388.1665085240.6082.blinux-list@redhat.com>
 <mailman.6189.1665155373.6078.blinux-list@redhat.com>
 <mailman.6548.1665156708.6075.blinux-list@redhat.com>
 <mailman.6206.1665159575.6078.blinux-list@redhat.com>
In-Reply-To: <mailman.6206.1665159575.6078.blinux-list@redhat.com>
Message-ID: <mailman.6884.1665165410.6076.blinux-list@redhat.com>
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

Try putting

$HOME/tdsr/tdsr

in your .bash_login file. The shell should expand the tilde ~ character 
to your home directory, but $HOME is almost guaranteed to expand 
correctly. Just as a test, try running

echo $HOME

and you will see the expected output.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

