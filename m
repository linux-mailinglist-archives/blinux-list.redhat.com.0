Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C6A594995
	for <lists+blinux-list@lfdr.de>; Tue, 16 Aug 2022 02:14:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660608891;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FNDBLqggwNt8RHCfotLuRg05WnAOZGJbIhWlRN9uRCs=;
	b=I0YgUkg5o/1ayiGRJR0dmfzatWDcLjODUnY26LexxI+kCs7fI5GDHMA3hs6uzMu+VKoBxv
	RC5GiMnQ+z8OlLAA6mJkSUgWsUrB+UhIAToDORoQJYM8fKQsV7YD++vpB0cSG9aWNlnxnm
	UJudcx4+3DXZMGpFqNgFWxSlEQ68Eh4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-424-xld0_PyCMR-y8l3HtYzaJg-1; Mon, 15 Aug 2022 20:14:47 -0400
X-MC-Unique: xld0_PyCMR-y8l3HtYzaJg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 528C318A651B;
	Tue, 16 Aug 2022 00:14:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A0BFC111E3ED;
	Tue, 16 Aug 2022 00:14:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E645E1940353;
	Tue, 16 Aug 2022 00:14:36 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 16 Aug 2022 00:14:32 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Impossible to know sender info
References: <mailman.708.1660592109.10505.blinux-list@redhat.com>
 <mailman.703.1660592414.10507.blinux-list@redhat.com>
 <mailman.770.1660603181.10501.blinux-list@redhat.com>
 <mailman.731.1660603954.10502.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.731.1660603954.10502.blinux-list@redhat.com>
Message-ID: <mailman.750.1660608876.10499.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.

Even if the mailing-list doesn't, if you use a powerful-enough mail user-agent like mutt/neomutt, you can mung the subject field semi-arbitrarily using regular-expressions as detailed at

  http://www.mutt.org/doc/manual/#display-munging
  https://neomutt.org/guide/advancedusage#12-%C2%A0display-munging

I'm not sure if you can mung them conditionally such as based on the sender or mailing-list, but I use it to strip out a lot of junk from mailing-list subject-lines.

-Tim

On 2022-08-16 00:52, Linux for blind general discussion wrote:
> Hello,
> 
> and from an accessibility perspective (from my point of view) it would
> be nice, if in the subject field could be written blindlinux or
> something like that, so an average blind user could quickly determine,
> what is and from where is a mail, simular like majority of other
> mailing lists have been set.
> 
> hope, that I was clear, thanks.
> 
> best regards,
> Jo??ef

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

