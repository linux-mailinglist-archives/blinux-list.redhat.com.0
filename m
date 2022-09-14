Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D32D85B8079
	for <lists+blinux-list@lfdr.de>; Wed, 14 Sep 2022 07:09:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1663132149;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hv/oVFCTdTLjxcED4EBhy+JuChWP/LfwOeJpKP+fs3Y=;
	b=PqmKS+eXsrCMnV3hJ739djPdbYwWOIm/JzNRAXFm07lYb4723W0hKwIxYcywxMH3AwIlms
	exhxzJ2nbQu2onIIRQUaZF4lI1bOTGO8c904ybjuLXp9/hgGknEt7ltO8ZohYoaW7gOnOG
	sUIWL+4PZYPkSGWFN3bzJNYVTabEnlQ=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-591-1mO5C6T0PHatXQqaICmGUQ-1; Wed, 14 Sep 2022 01:09:06 -0400
X-MC-Unique: 1mO5C6T0PHatXQqaICmGUQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 64DD929DD9A6;
	Wed, 14 Sep 2022 05:09:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C4E9C492B04;
	Wed, 14 Sep 2022 05:08:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 66AD31946A53;
	Wed, 14 Sep 2022 05:08:56 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 dalen.lamasti.net 1C47F14C1208
Date: Wed, 14 Sep 2022 07:03:24 +0200
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Daisy-player
References: <mailman.8282.1662926405.10503.blinux-list@redhat.com>
 <mailman.7882.1662933308.10505.blinux-list@redhat.com>
 <mailman.8693.1663096733.10503.blinux-list@redhat.com>
 <mailman.8220.1663098144.10507.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.8220.1663098144.10507.blinux-list@redhat.com>
X-Spam-Status: No, score=-3.1 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
 T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on dalen.lamasti.net
Message-ID: <mailman.8615.1663132135.10499.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Sep 13, 2022 at 09:36:08PM +0200, Linux for blind general discussion wrote:
> Linux for blind general discussion, le mar. 13 sept. 2022 21:08:46 +0200, a ecrit:
> > On Sun, Sep 11, 2022 at 11:54:29PM +0000, Linux for blind general discussion wrote:
> > > No clue, sorry, but for your information the new repository is:
> > > https://github.com/book-readers/daisy-player
> > > 
> > > Didier Spaier
> > 
> > Thank you.
> > 
> > After doing ./configure; make, I get another problem:
> 
> It looks there were bugs in the repository indeed. I have pushed fixes.
> 
> Thanks for the report,

Thanks for the solution.

I was able to compile the source by making a symlink from /usr/include/sox/sox.h to /usr/include/sox.h. Shouldn't the compilation process also search for the sox.h in /usr/include/sox/?

Thanks - Lars

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

