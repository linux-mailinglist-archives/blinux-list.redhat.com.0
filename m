Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B504F084B
	for <lists+blinux-list@lfdr.de>; Sun,  3 Apr 2022 09:28:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1648970883;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=mmba64ymKeoL3x6zHlJ+dS5HLQSb59hopPegKxUNcaQ=;
	b=OB+IZuWZbvasdapIxFHS9SfGIRHDTUPrL9CRNpJ4nO97PKc32j/qx4YQgO3kRc0/UyCEBe
	Lj7yI8d1M9jryJfwHbRop9Hes2UdDp96X7Phg4PcZWfORjFckvIRTXrxvCIg6fuhEINhOB
	6+NNXeC55MgGQP6J8BxIJlWuhiCl0+E=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-301-Efv5M0ucNb6imIPZ-nNdnw-1; Sun, 03 Apr 2022 03:28:00 -0400
X-MC-Unique: Efv5M0ucNb6imIPZ-nNdnw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ABEC5101AA46;
	Sun,  3 Apr 2022 07:27:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 48F114229C1;
	Sun,  3 Apr 2022 07:27:20 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7EF9D1940365;
	Sun,  3 Apr 2022 07:27:09 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
User-agent: mu4e 1.7.9; emacs 27.2
To: blinux-list@redhat.com
Subject: Echoing of text blocks by Orca/Espeakup in Vim
Date: Sun, 03 Apr 2022 09:19:28 +0200
MIME-Version: 1.0
References: <87lewmeihm.fsf.ref@yahoo.com>
Message-ID: <mailman.6276.1648970829.111202.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"


Hi all,

While moving through a file using arrow keys, Orca or even Speakup
announces the new line or word or character you moved to. But try 
that
with the legendary j, k, l or h keys, no echoing takes place. You 
only
know that you have successfully moved to the new position, 
ironically by
pressing the arrow key!

So is there a configuration or setting I can make to have these 
new
positions announced in any of the screen-readers?

TIA,

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

