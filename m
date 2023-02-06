Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5E468B79B
	for <lists+blinux-list@lfdr.de>; Mon,  6 Feb 2023 09:44:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675673049;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DPBkMQPcIEe9nwT3z8h7ohJHPE5910z0oPtvLtshF9w=;
	b=XYdMvfhnp24u/3q/x3aP6dNY9WNasPgN50kPLkPSMV3kWDovhW/Da91qtOZUrfsmYBTvM7
	Mu/k/98WAawot1zFJgyjNdFtudCDlkn3iSWG/wOcFUW0jDtS7uogwtAqz/uHvf8xBat4Bj
	nZM6DExV1uGsmubVfkREeC9HpLJpFPY=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-355-nFO65lgjNg-qckLLAcsOXA-1; Mon, 06 Feb 2023 03:44:06 -0500
X-MC-Unique: nFO65lgjNg-qckLLAcsOXA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EE82F2A5955C;
	Mon,  6 Feb 2023 08:44:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C9BCBC15BAE;
	Mon,  6 Feb 2023 08:43:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id EC561194658D;
	Mon,  6 Feb 2023 08:43:57 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 5 Feb 2023 22:37:58 -1000
To: blinux-list@redhat.com
Subject: Re: Getting DavMail to Work in the Gnome Desktop
References: <mailman.3943.1675628072.8168.blinux-list@redhat.com>
 <mailman.4278.1675636403.8172.blinux-list@redhat.com>
 <mailman.4304.1675651874.8171.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.4304.1675651874.8171.blinux-list@redhat.com>
Message-ID: <mailman.4550.1675673037.8170.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Martin wrote:
 
> 	I am going to have to learn python, indentations and all
> as I do know how to write code in perl and some C coding so I had
> better keep pounding on this problem or nothing is going to
> happen on it's own.

I suggested python because more people know it and the
libraries are more current, however my own preference
is for perl. There is at least one EWS client
on CPAN: https://metacpan.org/pod/EWS::Client

The last release was 7 years old, maybe acceptable if it
can let you connect and download messages. 

-- 
Joel Roth

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

