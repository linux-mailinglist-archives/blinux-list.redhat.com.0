Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id A97D13D74B9
	for <lists+blinux-list@lfdr.de>; Tue, 27 Jul 2021 14:05:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627387557;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1nS8Ozi5KOMTHrH2VBDhN6W6jF2UYCYc+x7rPfqlBtE=;
	b=PdxxI/+/dsRv7zCnNmlBE7j52Hing6b3Ra4NX4wxNMqero8y84tBj6x7vcqf/08gjkni+7
	o1tc3eAQbgmQ3aZIABAUiw8YD5ss1eCxWHf9yEQkUgv5mvQi6rPbltaJF+lMlhpeDI8drw
	5FPovr5JAhViLcHBdlJSFBDm6rguNTM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-430-lXHBjoM0PHe-JuMgwBjgeQ-1; Tue, 27 Jul 2021 08:05:56 -0400
X-MC-Unique: lXHBjoM0PHe-JuMgwBjgeQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 84A1E192CC40;
	Tue, 27 Jul 2021 12:05:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D288B18432;
	Tue, 27 Jul 2021 12:05:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1E0EE4BB7C;
	Tue, 27 Jul 2021 12:05:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16RC5ZCu016751 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 27 Jul 2021 08:05:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C57FC20341BF; Tue, 27 Jul 2021 12:05:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C17E820341BB
	for <blinux-list@redhat.com>; Tue, 27 Jul 2021 12:05:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BC3E9866DF8
	for <blinux-list@redhat.com>; Tue, 27 Jul 2021 12:05:32 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
	[209.85.222.170]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-542-bKvefVGKOLaFer81CGMTjw-1; Tue, 27 Jul 2021 08:05:30 -0400
X-MC-Unique: bKvefVGKOLaFer81CGMTjw-1
Received: by mail-qk1-f170.google.com with SMTP id k7so11992140qki.11
	for <blinux-list@redhat.com>; Tue, 27 Jul 2021 05:05:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=FQqzIsnXFTFd+uQQ/v8iLBHyXZGWSOmRvwbAntK/AGo=;
	b=t1VapkZ08Yq3GCZd/7Gt+hpJMJc0UTi2ibMDWHFPU6LIYZP61CUy2qG4EP9K4RuY6Y
	jNElh0pep2LYWSrkQDTIDnPiNZsrCyDcuemIfs7YawPxyf1rd5RuxF8Y5ZDl/Fysw6DK
	+ET9+/sMD+5ViJ4Ulw4w8LmE3sxnoiW01QxRImeWtcWm1eM7TAJ7Ui6ZtaLt6rPqROnw
	+XHUvtSwRr1HdJT+z++7vLtZsUyBq2AiaojwEoQ769g4tNEaUW9wIJG62rq72SjKqHxw
	Mf6Ln+Z8qwF7VzJFQtG2XsjoHDccIptd2Qbk6h6Kl29dJ6PtIKo19ATQBlAbZLQhyiY3
	ndRQ==
X-Gm-Message-State: AOAM530HH5xUPGSRYe6HXwu2SFJSjhHeaT4v5temmkpSnmWg1EfeJrEj
	+GLH0Mm0MLnvGOZTAHELpwJEZ3J9O+Y=
X-Google-Smtp-Source: ABdhPJyypySxV40v86jiCddHSfCoMYGJU/4dZo9x4rQjzcTx/2AGt5az8kiuOjgAFQTfiwt2M4HnjQ==
X-Received: by 2002:a37:6353:: with SMTP id x80mr22141282qkb.464.1627387529934;
	Tue, 27 Jul 2021 05:05:29 -0700 (PDT)
Received: from ?IPv6:2603:6080:6304:450a::433?
	(2603-6080-6304-450a-0000-0000-0000-0433.res6.spectrum.com.
	[2603:6080:6304:450a::433]) by smtp.gmail.com with ESMTPSA id
	w185sm1624808qkd.30.2021.07.27.05.05.29 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 27 Jul 2021 05:05:29 -0700 (PDT)
Subject: Re: A question about adding keyboard shortcuts in mate
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <CAD_4ddR69ScTQ-vSeHDKi+zsFsMgU7WuV37otQQcw1ObGC9wNg@mail.gmail.com>
	<0B5B1D7B-CDA1-4A04-9BC9-0AEF80D6EA74@linux-a11y.org>
	<CAD_4ddS20gMoDDxspfdKDxrm=U7qxFNd+yWL=3gT3gk4cd+YmQ@mail.gmail.com>
Message-ID: <3ed10e36-6401-85c2-9da2-018dbe581195@gmail.com>
Date: Tue, 27 Jul 2021 08:05:22 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <CAD_4ddS20gMoDDxspfdKDxrm=U7qxFNd+yWL=3gT3gk4cd+YmQ@mail.gmail.com>
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

There is no need to browse applications when adding a keyboard shortcut 
in MATE. Just fill in the name and the command as you have done for 
ocrdesktop, then click the Apply button. Your custom shortcut then shows 
up at the bottom under a grouping called custom, where you can bind the 
key just as you would for any of the previously existing shortcuts. You 
can add as many ocrdesktop or any other commands as you like in this 
way, then you bind them to their keys all at once from the bottom of the 
list of shortcuts. Note that this method does not allow piping or any 
form of complex scripting, but for just running ocrdesktop with various 
flags as you're trying to do, it's perfect. Hope this helps.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

