Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 47EDF4EF9E7
	for <lists+blinux-list@lfdr.de>; Fri,  1 Apr 2022 20:33:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1648837995;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7QPSV7u2Pl3sIjcnEpoFw2gx5CMMBsUSZ8j093qAGfE=;
	b=Q/Okm4Z/o1JK32PeWfWm0Tql3CQSHa+h+2P9Ig7ZtlcSqk1kIz9sUgmKZkZMgGrLhqTbrG
	2vS80cd6dfSvZUCXexxr7zkScsIxx+HnkKSSsDT2gAZtVqjIeqTTsjPpX7rrwsJkzsZSsD
	3juPYC6NfVCQc4+ryJezkYjEwPOUEE8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-605-pzH-fJCYMym9_jbk1Q3QwA-1; Fri, 01 Apr 2022 14:33:12 -0400
X-MC-Unique: pzH-fJCYMym9_jbk1Q3QwA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6A56F101AA4D;
	Fri,  1 Apr 2022 18:33:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5348740E7F02;
	Fri,  1 Apr 2022 18:33:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 85EAC1940345;
	Fri,  1 Apr 2022 18:33:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
References: <mailman.5721.1648781651.111205.blinux-list@redhat.com>
 <mailman.5911.1648787363.111206.blinux-list@redhat.com>
 <mailman.5879.1648787784.111202.blinux-list@redhat.com>
 <mailman.5777.1648788178.111208.blinux-list@redhat.com>
 <mailman.5770.1648788748.111209.blinux-list@redhat.com>
In-Reply-To: <mailman.5770.1648788748.111209.blinux-list@redhat.com>
Date: Fri, 1 Apr 2022 13:32:44 -0500
Subject: Re: Non-visual mind mapping alternatives
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.5928.1648837984.111205.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Once done, you could probably find a tool to export your Markdown to a
mind-map like diagram or picture for the instructor.
Devin Prater
r.d.t.prater@gmail.com




On Thu, Mar 31, 2022 at 11:52 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> Oh the table does seem to be a good idea. Listening to the description,
> that may work better than a simple outline, especially since the diagram
> is described as a circle in the middle with something like octopus
> tentacles around it, I'm thinking to left and right, since that is what
> should be filled in. So a table or tree structure seems to be what I'm
> looking at so as to keep it in a somewhat visual but non-visually
> accessible form. I'll also take a look at the recommended website
>
> miro.com
>
> to see whether or not I can properly fill in the template there and
> refer back to it later. Thanks again.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

