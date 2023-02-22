Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ABEE69EC55
	for <lists+blinux-list@lfdr.de>; Wed, 22 Feb 2023 02:21:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677028872;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cwRM1WmS8mbAsVe4IUW51XDiucI5GwcgwxtMHuWoN/U=;
	b=WOfnFx3W2yeQl8oc2R/dBxV2rt733fvO7KsI1lCmPYfenLQXug2Y9ZYtUaCNI9yZjvIj2e
	tiQ7a4rG6C74XJHwtNuD5kbU+iiTPh6dICsuW47eUAEoQSNOpsI52Yn3xE6ILrIXmIcOgA
	wyFu6YyURKUBgeYrwe9uL8VeorMnrQQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-561-bnzOIHYOP9OQh5nA-JamEA-1; Tue, 21 Feb 2023 20:21:08 -0500
X-MC-Unique: bnzOIHYOP9OQh5nA-JamEA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6F8CC85CBE2;
	Wed, 22 Feb 2023 01:21:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9E65A2166B26;
	Wed, 22 Feb 2023 01:21:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id CDF8E1946597;
	Wed, 22 Feb 2023 01:21:02 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
Subject: Re: brave with fedora
Date: Tue, 21 Feb 2023 19:07:48 -0600
References: <mailman.73.1676547223.3517.blinux-list@redhat.com>
 <mailman.111.1676561327.3517.blinux-list@redhat.com>
 <mailman.877.1677014920.686539.blinux-list@redhat.com>
 <mailman.935.1677023694.686538.blinux-list@redhat.com>
To: blinux-list@redhat.com
In-Reply-To: <mailman.935.1677023694.686538.blinux-list@redhat.com>
Message-ID: <mailman.854.1677028862.686535.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tried that, no go.

> On Feb 21, 2023, at 17:54, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> You can put any file with .sh extension in /etc/profile.d and put
> 
> ACCESSIBILITY_ENABLED=1
> 
> in that file on a line by itself. Then restart the computer or just log out of your session and log back in and you should be good to go.
> 
> ~Kyle
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

