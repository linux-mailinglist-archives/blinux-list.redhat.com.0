Return-Path: <blinux-list+bncBCWIB27NVECBB7EF7WXAMGQENGTQ7YQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 1421B86B1B3
	for <lists+blinux-list@lfdr.de>; Wed, 28 Feb 2024 15:28:14 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-68fefa8c983sf70431186d6.3
        for <lists+blinux-list@lfdr.de>; Wed, 28 Feb 2024 06:28:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709130493; cv=pass;
        d=google.com; s=arc-20160816;
        b=qq8HLo/oadI5KDfULjDklvJn0hojGwHVczeZaf5EQgfgkO3/JcEJOhyAptKTQXIbZ4
         YobNdVTMSa7BWOT7y2AtAp5+imRJG4W+ngYfFZ6Cfj+KKhZwzTGomeEPhQpZ3DgENDiZ
         iH9j//rLXahFC29YgBnOPP1ulx7WGRY2rtzshfcTFtUccZ2DGOydS9nMql998NOLFWMX
         KP2XNgPOeuNb7jIr47atO3l5pXoZSvzssfN1EWX07d2/91Yw4egiRrp7BBGpyKmcqRw3
         hpEJ3PabcL0FqB2crqZE4Nek7PDQMRn7/Bg2DrXeW0GwdWamDOelo78Uuyjo6epjHpaL
         U6+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:to:from:date
         :delivered-to;
        bh=pzLZESG7CX8yjCC5r55MyCk4PtDzwiGTjS+w5i1+HR8=;
        fh=L9Ukd5PTzKSLAD2bvx3qqYclxB2cRvXFOzN7T0itQqg=;
        b=xP3OMH0pSeeZnlwqb7ZTW8jRT20+wR5VaGx1tn+x7GaHYTShaTfx0YVmC8M4h/wM83
         3EdDeS5t6YAA9iV0a2BR+2HJzMNtKRJ3E/55Jlxem1C7HJWUHnxGtRB+ozqElhDjUPIg
         luwj32ExObNIJenija6W4RCvQgaNCvm/t3gglgZQ2H9kJwzGLCqERHkTZshvTCb2V9a7
         FMZ1Z0Vtb0CFInERpT8WrKdNI57RF+H5nYZkbacujDjDicwRKFoNdkwAdQYr93vTbqDZ
         SmRM3fEQwaH2rULk2H2IHDMr4WN325E8ed+Wlyxl4oxVlyk7BfE1El7ayRpzK6SWmbVd
         qFWw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of janina@rednote.net designates 66.228.34.147 as permitted sender) smtp.mailfrom=janina@rednote.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709130493; x=1709735293;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pzLZESG7CX8yjCC5r55MyCk4PtDzwiGTjS+w5i1+HR8=;
        b=U1DEyixkV1RlSDY+q4PN7ZjsHWVI9ZoGPqytriNxgv3UoFyaPETBO1FOhJbS1bzPy9
         6khyXTivC2GmIrfvngEGlZwUiTZg7QiDa+GYoDhldP5IYYNXxDx6jtbprZl+AdpjNpxf
         C0mHGdWeOWaHQqBEXfMfRcy6nEl66zZG7z0dGu0OmhdVu3mQcut9FE7j0QsmTVBfwbtB
         65jHPnDzLNU5gyuN3p7Jwq5ODBRlzQnldCBTC1DkORzCS05anr7g/gw064OteWik7HCu
         R33pJXeOT4UeC6I/fF1R8ZZVPjDKFCitfINpNZmt10CgeZvzlsZHidTpgRPqmyL+x9us
         0t1g==
X-Forwarded-Encrypted: i=2; AJvYcCXOLRyqdRAXbnosGWRYvnRfxafg2o2exbUsXdkzez9yDH4j+9XdIxX3yvIhJQV7l/c0W2z8vSboDeIE389uGTk9256yNbAbvJXB
X-Gm-Message-State: AOJu0YysotcPH2olrVxfqpMjSrtc4YZ16FSZlu6jFda+LeO8wFaDC3LP
	32haWPRbGpuGBSV0528Q0L2CmJw4pcw4hUvjyE6DHeVXbGMyq5ptk91O/JMB+7k=
X-Google-Smtp-Source: AGHT+IET34b9ujPvu392YLVzktuGz0w4qiyCZKKPtZaW3hLltBRdkos6HgrYcyxksR4kz5B7USPAsQ==
X-Received: by 2002:ad4:5bef:0:b0:68f:69bb:4b97 with SMTP id k15-20020ad45bef000000b0068f69bb4b97mr6614408qvc.24.1709130492700;
        Wed, 28 Feb 2024 06:28:12 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:b65:b0:68e:eeaa:8248 with SMTP id
 ey5-20020a0562140b6500b0068eeeaa8248ls2202337qvb.2.-pod-prod-06-us; Wed, 28
 Feb 2024 06:28:11 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXHpX6g2u2x/RBUqQM123Wq75JnC3APKFtx7cZGg9oIE23zp3siKxa4kCocI5NPeU2l+NkUQhZVudjKxyNFSyK+nomzzC1y6sjVe22L
X-Received: by 2002:a1f:62c2:0:b0:4d3:3b1b:aa92 with SMTP id w185-20020a1f62c2000000b004d33b1baa92mr2071132vkb.11.1709130491686;
        Wed, 28 Feb 2024 06:28:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709130491; cv=none;
        d=google.com; s=arc-20160816;
        b=erQvH1BdgThGK9ju0lJQRPzXxg7kJWRaATflQgsKA5Q9/AjQiSFJpmKWn/XhhHTvJ2
         Yeh7UXhVkzSBIvhfFrqTE0zbPMuWOeXmOvt1wfM+NNhDTwgNWdISlaeTYV5nVjl2vCtW
         vMGt4YzqFRY17MyEbpzwkCLsJ5X+RbjSeTMKfCocHlni3jvszHo0EVbal8qRtvsddApA
         tcwTR/57ymzbXNslbus7QQ71uGtwyRBqDBQCZik+y8lP78B9GDB9tHYhbipX5NITk3R5
         9sQXKBrzpxZKHrIx7sl+Hh1siGzrq1KJi6c4X//dDXYfzl0O3jiBEu3K7rKGCQglZvk7
         to6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to;
        bh=kmJcjmqRgMU+tWq6b8D8DEI4gBKH9MwCt1+yVvjd/mQ=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=MqKKtVpnWKd0sltU9A33ckTg9NwxkZE/cvHzk3x641zhnCzsOp7e1aF2tsoD70jzp2
         h9TST77FtYdfNBuIbUWPDEGJz5vCNuV0OqAekv4RRfRAwRllQVJ+7EA2kUW9VHrfnAIX
         bCgCLrypxj4ed/oRFPogkybZ1U0h0iGVJ3vQe0VdXbfC+qkFQ2wuBWwZLzF3mX5byUOZ
         aux0G60BtOsuftwpPd/xOb+NALke5NHtSy18xYtyDqxPcwhlDhiWv8azAuks2XuX7jAI
         aaJbyv4ZtPoyUq4RO9tLd9GNy2qhNiL/vw6PJOMWsV0SAdDoSUSUXZ9TOqoOk9+D1PSB
         9/Aw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of janina@rednote.net designates 66.228.34.147 as permitted sender) smtp.mailfrom=janina@rednote.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 3-20020ac85643000000b0042e635cbed3si920814qtt.419.2024.02.28.06.28.11
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Feb 2024 06:28:11 -0800 (PST)
Received-SPF: pass (google.com: domain of janina@rednote.net designates 66.228.34.147 as permitted sender) client-ip=66.228.34.147;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-686-edEoQelkOGmoVxwT-k2htw-1; Wed, 28 Feb 2024 09:28:10 -0500
X-MC-Unique: edEoQelkOGmoVxwT-k2htw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 42A4F185A785
	for <blinux-list@gapps.redhat.com>; Wed, 28 Feb 2024 14:28:09 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 3F1EA2015B7A; Wed, 28 Feb 2024 14:28:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0590E2022AAA
	for <blinux-list@redhat.com>; Wed, 28 Feb 2024 14:28:08 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A63CF811E81
	for <blinux-list@redhat.com>; Wed, 28 Feb 2024 14:28:08 +0000 (UTC)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-573-a78ccdp-MlyLd2YqT9tnmQ-1; Wed,
 28 Feb 2024 09:28:05 -0500
X-MC-Unique: a78ccdp-MlyLd2YqT9tnmQ-1
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 20A1EFA0D4
	for <blinux-list@redhat.com>; Wed, 28 Feb 2024 09:28:04 -0500 (EST)
Received: (from janina@localhost)
	by opera.rednote.net (8.17.2/8.16.1/Submit) id 41SES4XF212211
	for blinux-list@redhat.com; Wed, 28 Feb 2024 09:28:04 -0500
Date: Wed, 28 Feb 2024 09:28:04 -0500
From: "'Janina Sajka' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Subject: Re: pandoc and the docs format?
Message-ID: <Zd9C9HGn7q6cVhwp@rednote.net>
References: <Pine.LNX.4.64.2402251934330.897574@users.shellworld.net>
 <ZdvfpQXrW8k516Tq@panix.com>
 <Pine.LNX.4.64.2402251957470.897936@users.shellworld.net>
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2402251957470.897936@users.shellworld.net>
X-Operating-System: Linux opera.rednote.net 6.7.5-200.fc39.x86_64
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: rednote.net
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: janina@rednote.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of janina@rednote.net designates 66.228.34.147 as permitted sender) smtp.mailfrom=janina@rednote.net
X-Original-From: Janina Sajka <janina@rednote.net>
Reply-To: Janina Sajka <janina@rednote.net>
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

OK, for text as output simply change the filename extension in the
command I provided as follows:

pandoc -i file.docx -o file.txt

Works like a charm, imo.


Karen Lewellen writes:
> Hi Rudy,
> My end goal is text, not html, sorry if my post was confusing.
> Will check for docx2html though...appreciated to learn of the program.
> Can anyone answer my pandoc question though, since I already know that
> program is here?
> Thanks,
> Karen
> 
> 
> 
> On Sun, 25 Feb 2024, Rudy Vener wrote:
> 
> > Check if you have docx2txt installed, and if not, ask shellworld to install it.
> > Once you have a document in text, you can convert it to html easily.
> > 
> > Rudy
> > 
> > On Sun, Feb 25, 2024 at 07:38:51PM -0500, Karen Lewellen wrote:
> > > Hi All,
> > > We have pandoc installed here at shellworld, with my using it most often to
> > > convert epub files into html..then using lynx to make those  text files.
> > > I have a d. o. c. x. file however.
> > > previously I would use basic gmail to convert these, but that door is closed
> > > now.
> > > Will pandoc change  these into html?
> > > Because the format if not actually a word . doc file, antiword will not
> > > convert them.
> > > Ideas?
> > > Thanks,
> > > Kare
> > > 
> > 
> > -- 
> > Rudy Vener
> > Website: http://www.rudyvener.com
> > Check out my latest story: Downgrade, at https://www.scifishorts.co/authors/rudy-vener
> > Need a Limerick Fix? Visit https://limerickdude.substack.com
> > 

-- 

Janina Sajka (she/her/hers)
Accessibility Consultant https://linkedin.com/in/jsajka

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

Linux Foundation Fellow
https://www.linuxfoundation.org/board-of-directors-2/

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

