Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D53524D32
	for <lists+blinux-list@lfdr.de>; Thu, 12 May 2022 14:40:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1652359245;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xfNdp5cTr8MSmRDpV39DvbXqIPqIrLFZEuguo3QD0kM=;
	b=AXTGd4eu3l+Shmzfdl1arhnZEGtL4ei5cqVzW6T1kUBjq68vI0XwMyyEJmY2PyGBlGckzf
	JwqZQafSkVQ0y5ZC6Az3H/mGIRRDnmPlYgeQTleXWlORta8iFBV0NEjeMotzN/HKeEu4ii
	qcTqTkvguqZU4q3OQEMq3dw3BEFzR0A=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-472-ZGU43jJOPsSdDsOXHamMvA-1; Thu, 12 May 2022 08:40:41 -0400
X-MC-Unique: ZGU43jJOPsSdDsOXHamMvA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DBFA1802A5B;
	Thu, 12 May 2022 12:40:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8D1FF5737C5;
	Thu, 12 May 2022 12:40:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 69D1E1932210;
	Thu, 12 May 2022 12:40:39 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 12 May 2022 08:40:20 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: use of comm and sort tools
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.14985.1652352322.111208.blinux-list@redhat.com>
 <mailman.14856.1652358930.111203.blinux-list@redhat.com>
In-Reply-To: <mailman.14856.1652358930.111203.blinux-list@redhat.com>
Message-ID: <mailman.14890.1652359238.111202.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Tim's suggestion may be best, since mine made the assumption that you 
are in the current directory where your mp3 and m4a files are, and it 
also made the assumption that you have all the m4a files you are 
supposed to have, but are missing some of the mp3 files. Of course you 
can reverse things to look for missing m4a files, and you can put */ in 
front of the file if your directory structure is different. My main goal 
was to try to eliminate any temporary files and just print the m4a files 
that don't have matching mp3.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

