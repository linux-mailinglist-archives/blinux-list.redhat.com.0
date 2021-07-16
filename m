Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id EDEB43CB8B4
	for <lists+blinux-list@lfdr.de>; Fri, 16 Jul 2021 16:31:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626445882;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MCT7LEXSKVupxUQnhCx2MYj2cRbOA5fFDuhTM7dJgrk=;
	b=UitCquGVqnhLPf4sSe49YEonrryH4kAkdbiPBZSKUEmO+wvhzCNnuflhRO0fNOVzjpKggT
	xBnP65JM5YRk7eUEy+Qm0TnepdSrWpNVjBTX6/ESdc5M6gIEwDh6mMGSgxxb3pLlZhlR0O
	vKfQziDGZsi7+RpwBFwY15DVimiCGFQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-190-dPhZH8YhPluqyg8oasLKkQ-1; Fri, 16 Jul 2021 10:31:20 -0400
X-MC-Unique: dPhZH8YhPluqyg8oasLKkQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4ED49804308;
	Fri, 16 Jul 2021 14:31:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E26285D703;
	Fri, 16 Jul 2021 14:31:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A37464EA29;
	Fri, 16 Jul 2021 14:31:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16GERxLI028803 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Jul 2021 10:27:59 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5752320A8DE0; Fri, 16 Jul 2021 14:27:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 531BE20B6625
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 14:27:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AC6871078462
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 14:27:55 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-355-sW7nJH45N2eMF8NNz3NJWA-1; Fri, 16 Jul 2021 10:27:53 -0400
X-MC-Unique: sW7nJH45N2eMF8NNz3NJWA-1
Received: by mail-wr1-f54.google.com with SMTP id u1so12377216wrs.1
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 07:27:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=OO5V5Vb16chMLRYp7480bG+icln+505F6e0CK06YcJk=;
	b=PdrWlP9ItNsh+1uXMUpc7/mBcwNJnPVuR9TajjVW1HbGfoOTKqPEs2DYExVr+1sKfq
	YeIIK0f0YlvPk+L6LAAWnNpPM5ZN7LD5h1lCfo9nwoxQaleBVMv1MMPPdK98+PvDnH4K
	zMCwB6iuPwMqjOLX2pn8bFxXawpNRCcSuUhV9m5x177Je7vKRq8aTq3fTs8RsAdnjcfw
	AoQg9J5AaNa3BM09NCr9M4sJrrMzqyF0y1WJhsAzSMDXRJpZk1JHm8FZbcBTeq+6nSMV
	2MDrPdkeyJPKdF6sopRHWcv01lWTzdM8GOX9cYexJh3TVXJm8DiVx9Uzjd7jkpo4TmuD
	ImKw==
X-Gm-Message-State: AOAM533p2SGZ54/58mLmU+QvLg+5NwI1pDtWRkS9VdLeXljlDALLhz9W
	rUGDxR7lfNdXIQNMjcoCRjCOT/tqVDgBmQ==
X-Google-Smtp-Source: ABdhPJwap1tcf5Qo7PN3zg6JXLDN7bY0GM/FGInlMcP6D4t8QulwYFIQGmwi9zW+bcBk6nYw1FxSxw==
X-Received: by 2002:a5d:5141:: with SMTP id u1mr12774459wrt.193.1626445672225; 
	Fri, 16 Jul 2021 07:27:52 -0700 (PDT)
Received: from [192.168.1.102] (radio12.infos.cz. [46.33.112.76])
	by smtp.gmail.com with ESMTPSA id q7sm8351076wmq.33.2021.07.16.07.27.51
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 16 Jul 2021 07:27:51 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: audio cutting and exporting
Message-ID: <ddddb6cd-5f17-c0ab-1b56-e5ee9281c84b@gmail.com>
Date: Fri, 16 Jul 2021 16:27:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,

I am looking for accessible and easy to use audio application, which 
allows me to:

- select sound from point a to point b

- delete, move or export selected section

- export the result in multiple formats.

I know about Audacity, but maybe you know some more accessible and more 
easy to use editor.

My environment is Fedora 34 with Mate desktop and with all a11y 
variables enabled.

Thanks,

Pavel


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

