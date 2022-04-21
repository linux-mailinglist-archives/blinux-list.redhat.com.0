Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C46D750A836
	for <lists+blinux-list@lfdr.de>; Thu, 21 Apr 2022 20:38:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650566324;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VPOpC4O/fhhmqflfee9+Cw+KMVO3l334D0d+cNqTeHs=;
	b=YS8hZ4WgTRVj6poQItS1X/wvl8KMbdO6hGCjbGKCY3DSA9AbVkISnVb55645RxI2rf1JNS
	CcIZ0BkZie6gsNNtaOWDDa0Aoe2XFTQlt9VDQG6Lh0U2incf+P5iplfJEZ5oQjXmzOzCLA
	ROTnSFt0/sQcTIkMK7DlD1MZB/AnVx4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-107-jY-vEu5GMMCc8DshfY3cBQ-1; Thu, 21 Apr 2022 14:38:43 -0400
X-MC-Unique: jY-vEu5GMMCc8DshfY3cBQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1E1C1802809;
	Thu, 21 Apr 2022 18:38:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BB8C540E80F5;
	Thu, 21 Apr 2022 18:38:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id EC1871940350;
	Thu, 21 Apr 2022 18:38:36 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: Textbased installation of VMs in VirtualBox
In-Reply-To: <mailman.10132.1650538084.111208.blinux-list@redhat.com>
Date: Thu, 21 Apr 2022 11:38:31 -0700
References: <mailman.9706.1650458473.111206.blinux-list@redhat.com>
 <mailman.9836.1650463902.111210.blinux-list@redhat.com>
 <mailman.10095.1650485870.111206.blinux-list@redhat.com>
 <mailman.10132.1650538084.111208.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <mailman.10364.1650566316.111209.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> On Apr 21, 2022, at 03:47, Jace wrote:
> 
> On Wed, Apr 20, 2022 at 01:17:42PM -0700, Linux for blind general discussion wrote:
> 
> ... Rich, can Vagrant be configured to install as if you were at the keys, with a username, password, et al? ...

It has been a couple of years since I last used Vagrant, so my memories are very fuzzy and probably out of date.  So, I think the best plan would be to get on a Vagrant forum and ask some picky questions there.  That said, my impression is that the typical approach is as follows:

- create a set of control files and scripts
- use Vagrant to bundle some applications
- install the VM support infrastructure
- have Vagrant handle the app setup, etc.

So, assuming that you can trust your infrastructure (e.g., Vagrant, the VM framework, your OS), the resulting security (if any) mostly depends on the setup of the target machine and the content of the bundle.  If the scripts in the bundle are buggy or worse, the resulting VM won't act as desired.  However, your base OS configuration should be undamaged.

- Rich Morin

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

