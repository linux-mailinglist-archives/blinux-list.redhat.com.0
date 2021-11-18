Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4724245652D
	for <lists+blinux-list@lfdr.de>; Thu, 18 Nov 2021 22:50:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637272217;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=z+eY4zYwVgbzQvJfqSg7CU1mfS7GYrAMsn8bIHR0du0=;
	b=It3FOWzuSK615fmVtc/eVHwxtt7TKYKp3YqKVhkFxwmOgdlfX94Ksr5l5HIxNaPhQj3f0H
	HOKIVysYsfAUrU3GyNdxRwgFwIS7Y3dT3bMixoSQD0ezBB8EqSKqNEAVwFt8QQ/B/7lZ/M
	58VpAqGuttqLPTK8GvL4Y8bvZh1IEcY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-278-FeL36hyVMdur65YE6OGeFA-1; Thu, 18 Nov 2021 16:50:13 -0500
X-MC-Unique: FeL36hyVMdur65YE6OGeFA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2B81C8799E0;
	Thu, 18 Nov 2021 21:50:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 669FB60BF1;
	Thu, 18 Nov 2021 21:50:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7105A180BAD1;
	Thu, 18 Nov 2021 21:49:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AILnpAT024248 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Nov 2021 16:49:51 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E67F451DD; Thu, 18 Nov 2021 21:49:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E0B2F51DC
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 21:49:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F285C1066558
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 21:49:47 +0000 (UTC)
Received: from st43p00im-ztfb10061701.me.com (st43p00im-ztfb10061701.me.com
	[17.58.63.172]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-75-bpQHXlkrPDWHLFeESFuDjw-1; Thu, 18 Nov 2021 16:49:46 -0500
X-MC-Unique: bpQHXlkrPDWHLFeESFuDjw-1
Received: from smtpclient.apple (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-ztfb10061701.me.com (Postfix) with ESMTPSA id 84115AC092C
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 21:49:45 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: looking for Lennix distribution?
Date: Thu, 18 Nov 2021 16:49:44 -0500
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
	<8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
	<02c78924-8760-4e5e-d58a-787766c60325@gmail.com>
	<aab6690b-f55f-80d5-2b1f-dfc3aa7f1272@icloud.com>
	<779a43bb-fe1c-6d4a-a7e2-31532308d709@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <779a43bb-fe1c-6d4a-a7e2-31532308d709@gmail.com>
Message-Id: <C397260A-A8B2-4479-A3F5-6547EA4A1D8F@icloud.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.425, 18.0.790
	definitions=2021-11-18_12:2021-11-17,
	2021-11-18 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
	malwarescore=0
	phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-2009150000 definitions=main-2111180113
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AILnpAT024248
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,
What do you think of Linux Mint 20.2?
Is it better then Coconut?
I downloaded the Mate ISO from
https://linuxmint.com
I installed it in a VM, But
I have not had time to really check it out.
Thanks,
Rob


> On Nov 16, 2021, at 11:57 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> hello I have one more question, I think. Where do I download this distribution from? And in general about how much disk space does it take? Is it something that can be installed and will virtual machine or is it a live distribution. I can probably vinyl this out by going to the URL if someone would like to share that link? Thanks in advance.
> 
> 
> Disclaimer time, just be aware that the above has been dictated to the machine by means of Windows-based dictation software. If there's something that you don't understand that has been written above, please reach out to me and asked me what my original intent may have been. Thank you very much for reading this.
> 
> On 11/16/2021 5:51 PM, Linux for blind general discussion wrote:
>> Hi,
>> 
>> I have been using Accessible Coconut for about a month.
>> 
>> Orca can start at boot.
>> 
>> Thanks,
>> 
>> Rob
>> 
>> 
>> On 11/16/21 8:46 PM, Linux for blind general discussion wrote:
>>>     Good afternoon or good evening or whatever time it is wherever you are reading this. My subject line pretty much says everything there is to this message. I am looking for inappropriate Lennix distribution to run in a virtual environment. From everything I think I know, I'm thinking the best solution is something that can be installed easily, and allow me to install orca really quickly if not do it in the same install. Any good suggestions? I do have access to a Fedora core ISO image but I'm just wondering if there's something better or will this be sufficient? Looking forward to readig response wake up to my question.
>>> 
>>> 
>>> Please be aware that I am dictating this to the computer and Windows. I am using dictation software because of an additional disability. If there's something that I've written about that you truly do not understand, please write me and asked me what I may have meant. I thank you kindly in advance for reading this.
>>> 
>>> 
>>> 
>>> On 11/16/2021 3:06 PM, Linux for blind general discussion wrote:
>>>> Thank you Didier-and-Kyle. I will certainly run your command, but do I need to un mount anything? I would also figure I would be sitting outside of that mdeia directory? O-and-yes, Didier, it is vfat.
>>>> Chime
>>>> 
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>> 
>>> 
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

