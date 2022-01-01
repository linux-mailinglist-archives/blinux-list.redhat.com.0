Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3DE48284C
	for <lists+blinux-list@lfdr.de>; Sat,  1 Jan 2022 20:18:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641064683;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WcaOMkzPL6EsVETXVKhN++/zryIxklGGr5gP+XDVs0k=;
	b=VpLoy8FdPBDhlao9IZ2uXfE0zDLh5ZlQ2kCXXWTISW9yo1jPFm/An2tVSoHTZV1IO2cxY0
	99pohbnhywcyhtQNpdXmn3ncknD38DkFNzcMJ4fBrJpXnhcqJYnmt0utH3FkZRdPKGVgd/
	ZS/fdnj0kXx+VLLx1M68V+LwWuj8Gik=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-612-WQZ6Wd6IMyqucMD_q3_3_Q-1; Sat, 01 Jan 2022 14:17:59 -0500
X-MC-Unique: WQZ6Wd6IMyqucMD_q3_3_Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5B9BE108088A;
	Sat,  1 Jan 2022 19:17:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A581B60C17;
	Sat,  1 Jan 2022 19:17:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B0E264BB7C;
	Sat,  1 Jan 2022 19:17:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 201JHoDw014694 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 1 Jan 2022 14:17:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9E1BD492CA6; Sat,  1 Jan 2022 19:17:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 993DD492CA5
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:17:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7EA613C02B49
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:17:50 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com
	[209.85.219.47]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-391-L3yhKAcpMuWmzWvWqy2NsA-1; Sat, 01 Jan 2022 14:17:48 -0500
X-MC-Unique: L3yhKAcpMuWmzWvWqy2NsA-1
Received: by mail-qv1-f47.google.com with SMTP id kc16so27450756qvb.3
	for <blinux-list@redhat.com>; Sat, 01 Jan 2022 11:17:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=pR4QVkVHYEfB56P2rPOeJ+Ytqt8tvIco6aAWaNLSHcM=;
	b=EP4Gfm2VjGrgDquB6ZtCV8ae2/EvM4DNHxPjm2Z8fg/yA5Uy2rcxbt0K8+OejwOlxA
	3L2BJ6dMhvdjbTPq+FekSXdI3+moRPoTK53tTY8E797VNGrmr6pQStN6BSMUl1CX/rT+
	N0JIzVqdOXsZusOakITuIpZbpQOflVdr6whESp5bA6MZ6mENJBvoeuFF/HXkcoeGWoyW
	S9uWAc8xHu1KMGNT2+aVtpZYvOrkN2PUe+2DLWpJDJb2ONilcCSydZyksvhGjFjwWsTO
	sR0iPAC7WC3uVO3VEvxoOFpGr8rBcEp2Ly7FeyOCLNmiyAmzWLETGJAxpJUrngYAZJsz
	tQaA==
X-Gm-Message-State: AOAM53076Pt63INxBI1H7y7WfeXnvJ8boicU2H09PPTONE3AErL41ZPf
	9C3Fb+c0gyb8rNVVd/RIUvzeaLDdl5w=
X-Google-Smtp-Source: ABdhPJxpo9I1I/6/kE1tclpK4TSEb9WD/VhSu3tLWVzAIZt45NvV3a500+1ddKSVGRIDYCChXGByCQ==
X-Received: by 2002:a05:6214:daa:: with SMTP id
	h10mr35989221qvh.17.1641064667887; 
	Sat, 01 Jan 2022 11:17:47 -0800 (PST)
Received: from ?IPv6:2601:192:4c80:1420:52ae:3e59:80bc:ac89?
	([2601:192:4c80:1420:52ae:3e59:80bc:ac89])
	by smtp.gmail.com with ESMTPSA id
	t18sm26112765qtw.64.2022.01.01.11.17.47 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 01 Jan 2022 11:17:47 -0800 (PST)
Subject: Re: Recovering shift deleted data
To: blinux-list@redhat.com
References: <7c2c5806-4581-dc53-8e4e-750d9098398b@seznam.cz>
Message-ID: <963111a5-9514-068d-db29-c0883322600a@gmail.com>
Date: Sat, 1 Jan 2022 14:17:46 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <7c2c5806-4581-dc53-8e4e-750d9098398b@seznam.cz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I think, since you used "shift+delete", they're gone for good. You must 
have those warnings turned off?


-Dave



On 1/1/22 2:07 PM, Linux for blind general discussion wrote:
> is some way to recovery shift deleted items?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

