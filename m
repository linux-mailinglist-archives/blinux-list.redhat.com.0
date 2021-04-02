Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 55EFA352FAF
	for <lists+blinux-list@lfdr.de>; Fri,  2 Apr 2021 21:24:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1617391487;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BKCjAMRKD8oFUndzDcr+nv6sS4V0v99wyei2VU1Z8fw=;
	b=Mg99bV+awKxjCUcwiODOqZ7Q0/IVZj9udzm+237BIwPUNzenxxnZR1Yhfk7Tbb5KNkUEg6
	xaTpr6p6Nki1Ysm15RZ9u5OON77RN5Q8u5ynHEfswjZ9SrSh+Rglpa8HUzJu2RS0yeo2wh
	fDy3zsZ7v6H17vZFxBQXZYE4182XpRw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-95-nDmgfVk8N0-Mf8eZz9NYSw-1; Fri, 02 Apr 2021 15:24:44 -0400
X-MC-Unique: nDmgfVk8N0-Mf8eZz9NYSw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 43B291005D54;
	Fri,  2 Apr 2021 19:24:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 46A6160BD8;
	Fri,  2 Apr 2021 19:24:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5264C4A7C8;
	Fri,  2 Apr 2021 19:24:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 132JOMUL030778 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 2 Apr 2021 15:24:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 314462026D64; Fri,  2 Apr 2021 19:24:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2BEB62026D60
	for <blinux-list@redhat.com>; Fri,  2 Apr 2021 19:24:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 741F285A5AA
	for <blinux-list@redhat.com>; Fri,  2 Apr 2021 19:24:16 +0000 (UTC)
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
	[209.85.210.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-331-Zub0YViuPeqXVbKwcTI2nQ-1; Fri, 02 Apr 2021 15:24:14 -0400
X-MC-Unique: Zub0YViuPeqXVbKwcTI2nQ-1
Received: by mail-ot1-f46.google.com with SMTP id
	m21-20020a9d7ad50000b02901b83efc84a0so5725708otn.10
	for <blinux-list@redhat.com>; Fri, 02 Apr 2021 12:24:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:references:in-reply-to:subject:date
	:message-id:mime-version:content-transfer-encoding:thread-index
	:content-language;
	bh=ojF+QcEe+jtlMnn2DkfflzhIFE+LcpH746F5tczwXOg=;
	b=K435GTgOOkD4sGW44+CXAu+yKUvnFxdrJuSaQYrOqdGWfXQaKNWPX9FbuWvYYDwvwk
	fywzKlc/HGwins9TmBe3sPKK5vXumcKY8g3Z5bhlV/CAv+Aor0MylxJnB45t4z8OjdKJ
	kZDueBNglW7lVCSxpuNjOeXUOND2fFg6qbji013AJY5l2/Ww6By4wyQyaKMT52qN4TMo
	O4VvV7XL7SPAMWbAGIJhARO30t5Qwn+/aTfh2rSOEgxeM4aiF4XCRZTtv31U8kxwyW8b
	LzPerqJwhhRgMvDdJc6sd7CgtVTlH7ODLRxJ9/jqKUQuxYfAb0ia8QDNnqLVG0EjsQSr
	guVg==
X-Gm-Message-State: AOAM530n1i9/eL/SdC4CgsuAViBj5b6mCR329eV39b8q2rua/0Dls+xr
	DyCcIKIRj/W7et1ASmfiqYLRSa9vzt8y9w==
X-Google-Smtp-Source: ABdhPJzDWhr0fpgPpqhTq8R/gAxzqGakYunfbtgudb3GVE4TZ6PkzbpYfgC/HTYr+inYtJSLNgD7/w==
X-Received: by 2002:a05:6830:1510:: with SMTP id
	k16mr11701772otp.57.1617391453457; 
	Fri, 02 Apr 2021 12:24:13 -0700 (PDT)
Received: from DESKTOPHA8PIRR ([2600:1702:20f0:4420:ace3:daf3:873c:b554])
	by smtp.gmail.com with ESMTPSA id
	l190sm1777979oig.39.2021.04.02.12.24.11 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 02 Apr 2021 12:24:12 -0700 (PDT)
To: <blinux-list@redhat.com>
References: <00ab01d727d1$ce7dd480$6b797d80$@cox.net>
	<CAO2sX32bXzqw5kb7PPvSLGN+_XTMurMW1SKuBOQeagpt0f4XRw@mail.gmail.com>
In-Reply-To: <CAO2sX32bXzqw5kb7PPvSLGN+_XTMurMW1SKuBOQeagpt0f4XRw@mail.gmail.com>
Subject: RE: linux and orca
Date: Fri, 2 Apr 2021 15:24:10 -0400
Message-ID: <015101d727f5$c3ee15b0$4bca4110$@gmail.com>
MIME-Version: 1.0
Thread-Index: AQFuh/YXiTNl2IZ7NhZhZVY0Y6TnegJCpT/aq2DF7EA=
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-us
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Also, if you do not have a window fockus, you will want to make sure that
you are on a desktop window or something like an application.

Matthew



-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
Behalf Of Linux for blind general discussion
Sent: Friday, April 2, 2021 11:15 AM
To: blinux-list@redhat.com
Subject: Re: linux and orca

The Orca modifier key is generally set to either insert and/or caps lock. If
insert+space isn't bringing up Orca preferences, the next logical thing to
try is caps lock+space.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

