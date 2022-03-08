Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A51154D1CB2
	for <lists+blinux-list@lfdr.de>; Tue,  8 Mar 2022 17:03:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646755429;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=i4bJPluCIaXXoQHAV7W66uyjmCSJLNzeUSykLIeOrWk=;
	b=WESOS8i/MwYd0NQbAjVRZgFeLfk8rgREfhcFtIQGOa5P4k+TmIvAe0yaKV/vf+RmsqF4pK
	j9+CWQ1gkLydcnWO5I7gwEbuSUWjN7EfmfpLopoSj0KZAKjYlnqKeZiuLvYwgNUR/exESn
	EG0B+wmJl+ZUcwx4UD/cQR+A5Af/ls4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-504-rDdfnoJyMFaGoMzzSAAF1Q-1; Tue, 08 Mar 2022 11:03:45 -0500
X-MC-Unique: rDdfnoJyMFaGoMzzSAAF1Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 167401C01E87;
	Tue,  8 Mar 2022 16:03:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 578444010FC7;
	Tue,  8 Mar 2022 16:03:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id EFD5F193210C;
	Tue,  8 Mar 2022 16:03:42 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 8 Mar 2022 11:03:31 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: Kodi and Kodi screenreader, any updates/luck?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.357.1646744655.111209.blinux-list@redhat.com>
 <c0cd20fb-596f-549b-0509-b78c77b4f978@free2.ml>
In-Reply-To: <c0cd20fb-596f-549b-0509-b78c77b4f978@free2.ml>
Message-ID: <mailman.434.1646755422.111208.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Good luck getting it working, and if you can work with it, do let us 
know how you did it. I haven't been able to get it working on anything 
other than a computer, and that was some years back. Kodi's screen 
reader just doesn't seem to work on any streaming or mobile device, and 
I've heard it doesn't even work on computers now, which is why I 
recommended vlc, since it works here on everything I have, and can 
access my networked audio and video files. Again, let us know how your 
Kodi experience goes.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

