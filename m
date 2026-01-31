Return-Path: <blinux-list+bncBDGI3AUYYYCBBGUV6XFQMGQEV4ARRBY@redhat.com>
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMfrKp1KfWlZRQIAu9opvQ
	(envelope-from <blinux-list+bncBDGI3AUYYYCBBGUV6XFQMGQEV4ARRBY@redhat.com>)
	for <lists+blinux-list@lfdr.de>; Sat, 31 Jan 2026 01:19:41 +0100
X-Original-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD5ABF9C7
	for <lists+blinux-list@lfdr.de>; Sat, 31 Jan 2026 01:19:41 +0100 (CET)
Received: by mail-qt1-x848.google.com with SMTP id d75a77b69052e-50142190becsf71371171cf.3
        for <lists+blinux-list@lfdr.de>; Fri, 30 Jan 2026 16:19:40 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1769818779; cv=pass;
        d=google.com; s=arc-20240605;
        b=K4HmR6BqSeHH67Xru4yVSUhQbO7LQn1TDI8rp/RcpG4iuW2lDOr/InUEyBGOX+dj2r
         ejEpRi8uIIKbH7Mjtp+HxRFIhC2Kz1XvRxWmAl08fKPqJlhYdn5JJyEDE2Y5cHq++zaz
         /B8au7YHJ27zIrCDuFbml0UiTa5kaUM46rsfbPGY9N/Bow+AR2PAImd7dC1ioc/IIS2J
         7gDn62Z8sYk1OGvGsorSHB0ZrBv5ATQ5mSEwAf7pe/SmWiq9W1BMTma/hIxAZFm+Hsso
         8p+n1OHlEXncQ7rdBvPfmofHEGowRYKce+3WOGMm2ogINRY7T38SQZ0VULKw6ThYmxIP
         jmYw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:mime-version:message-id
         :subject:to:from:date:delivered-to:sender:dkim-signature;
        bh=0NJ04Pav+hIMzass58J6OYTVaB92F3un6aJ9mcgwk+8=;
        fh=EZi6YAF7to0+Iyyzm4cmJ9/IwYI1DflazdPGluQVYAk=;
        b=BZwvn2FTS7OfJ6t6pApQ4uocpUJ3nStx+2W+MIl5ZyJOLWQzF5f2P+KmAHCPp+zpR8
         roivpebKEP7VsUn2RmLQvlAn3rWwh/ZqDhQiIWKoeaW1Gycx3curmxLopnfIMld89psB
         97P3NB7RtYa0/dbNqJktuOmEyE27cYkGUn35I0d4QZFAXdAt7apipYA/VZPp+RVtMCoP
         InUNswFP3tZOujkHR4Ow+T4NvJpfETTKyuDOx7ZcrMhQ+jxiXuGVqsCNFNhns2Jpz1vz
         U5vYTbbqd85TDp1S7+gCZXZHmkB+eE8kXO0Jzh0G0LsPXqPPvrezJ2t8zrYDHrcMnDLa
         H3Jg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@panix.com header.s=panix header.b=s25OHIDY;
       arc=pass (i=1 spf=pass spfdomain=panix.com dkim=pass dkdomain=panix.com dmarc=pass fromdomain=panix.com);
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.75 as permitted sender) smtp.mailfrom=salt@panix.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1769818779; x=1770423579; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-disposition:mime-version:message-id
         :subject:to:from:date:delivered-to:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0NJ04Pav+hIMzass58J6OYTVaB92F3un6aJ9mcgwk+8=;
        b=rfR4HhCd3RIhTri9qftcHYFRnGSLGjJ6+lD4h8OZ8gQ6X1x6QP1ODQB1GxiZpXd/gm
         la+O9s3xWczHUqKvQfUAklmB0ciF3lfvjYFhawl6eMX3VuS3FX+Eg9oVo9laMiCQeuEb
         7twsTamW7UY9rXgVukoXXkoAk+1bIpOt7XUudcLjNUO4H6puSPDoTTfuVaroVorLNJPj
         4sgxopS4Mw95UC+BKqg2vE2Uppe3ZgbPYlwA8ISexuzM8SIXGvt11tYVBcOessh0/3mD
         n48FdAL9Ou5wR1Sd8vtvuFXQ905Sp3cB7fJw3SjvHLo39KhLXiInZwOe6nLU8y2cBBi4
         ybSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769818779; x=1770423579;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:message-id:subject:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0NJ04Pav+hIMzass58J6OYTVaB92F3un6aJ9mcgwk+8=;
        b=fmuv/lHmAqMu92iV1boySeucByKpb0SlMP1fLLKNdhq51qMS/PjupGVipZwxUOj91E
         Qk1zJ/01h59lh60MCbqWE0NCLyB+97b+HRrNWlf5EC/9Jx2NCDgxR/nARiaUoYxSeFxD
         lFhyR1IcnDsaMilM8q9CCzkCohXGe2ODUgK9D8qOhcJUaZkcLZc0qeMN7vpjhaThS8ZJ
         DZcYF3VaEKEnef3jq5RAvhEDzwg0cAdUdt5cBMOTfrrQ82RBOnoWeUAEvB3ShnKYsjTs
         fvjUQm/Luq6NbP7opN4+IZvuwW2SfzkU3tkfinlYyMSdmIJa6bBymPdqWPQF4GBhTeKD
         bLbA==
Sender: blinux-list@redhat.com
X-Forwarded-Encrypted: i=3; AJvYcCWkYcGFXQgoYvAMVpKVqgO2vCIOJBEByKjCET5nrjdWp19OenUERhvyCGqtfXZodWu6qn8Tyg==@lfdr.de
X-Gm-Message-State: AOJu0Yx7Mrxgz6ZlRPuXa/eZ6CKuYZve7aNe742m1dfD3C1Oinq3Z1wc
	ZaHQuv5sWoMzl4s31ptvxSzGkJ9uUc0W2yNp5CL67VOe7vIVy9sqi7wdl1RuMb4zEXo=
X-Received: by 2002:ac8:598b:0:b0:4ff:c274:3eee with SMTP id d75a77b69052e-505d2153a09mr66574411cf.8.1769818778980;
        Fri, 30 Jan 2026 16:19:38 -0800 (PST)
X-BeenThere: blinux-list@redhat.com; h="AV1CL+FZVHOzx3N1YxRwb47VZ4B1NY4h9rWnOB9oeiwri5Zwkg=="
Received: by 2002:ac8:7dcc:0:b0:4ed:7bbf:d13 with SMTP id d75a77b69052e-505df7ad94els2463991cf.0.-pod-prod-07-us;
 Fri, 30 Jan 2026 16:19:37 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCXMIqfFXs6cyO7bWyRDNQDv21MpbrZwolmdREYvS99IQuwV3fBgBG8tLtipMK1694oibIcRmbnlA0F5NQ==@gapps.redhat.com
X-Received: by 2002:ac8:7fc3:0:b0:4f1:b398:551f with SMTP id d75a77b69052e-505d22a805emr57883201cf.68.1769818777764;
        Fri, 30 Jan 2026 16:19:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1769818777; cv=pass;
        d=google.com; s=arc-20240605;
        b=Q1m3jMF1ppGgOnjq2XVDIlvHsIog2zpo4W9T9a2sG+X7Nm47wgMTiUjoIx6FWL9bVF
         y/o0d9HwDciz1aPd8bc2u2zK2kg8GDiQwoOJeYWFBb403Y4fv/qXZL2wdnSrsLtCDcmI
         VDTxAHk4Nl1N7R2INm56zhiErao2Gmwg9O5G/nLaMMMcz4G+x3T1eOoHr+CPEuntWweb
         HTl5EhEmlQF4Kmkd+hMLw36YzF0c+0EfE1fAzwyqzfKC57LxnnWOQT7NRtnedXNaKVaL
         bSJSzdzvks2yTvUA7l1BY5R4W6osxJLj5A58q92NyDFJ7fVf6CT7aRtqemKwa0hcUSSM
         S/Rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature:delivered-to;
        bh=s3xVNrawdKwJ6TLfIq/vjqxDu8PAyy1ew6x8ms0k9f8=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=I+vaWeb/cyUxYrIkICfQmnlRnT5QZOBdgEXDnsbdYu3s1gBtB7t31opQxEXUyRWgVG
         JUdL5z+gKSJ3JE16bUX58JusOyf+0Tg17O7JQ5RUoWZ4b1HxtEOTGUp32bjBa7+BDuMP
         xmgl9CeFsP0WXihjtjRSyniRN85eB7kk2MXLP5JdZG2VCymFRv87B4T4Np4m0L1KN3CS
         xGobl2+EsrYwoHZcoL8m+06ltUJlMvswjQ1XmTlNXcTVnXnLCA0TWCHa1UZ76yn0kdJd
         rI7XZLfpcDC30L3yvUW0shlqxyHmk/RFZbIrD/bizjyshTz5fUAd4bYPOwtScswVieWK
         gYuQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@panix.com header.s=panix header.b=s25OHIDY;
       arc=pass (i=1 spf=pass spfdomain=panix.com dkim=pass dkdomain=panix.com dmarc=pass fromdomain=panix.com);
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.75 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 6a1803df08f44-894d37f4835si99192166d6.484.2026.01.30.16.19.37
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 16:19:37 -0800 (PST)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.75 as permitted sender) client-ip=166.84.1.75;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-554-IFK_5DHCPF--xvE7P0pCcg-1; Fri,
 30 Jan 2026 19:19:36 -0500
X-MC-Unique: IFK_5DHCPF--xvE7P0pCcg-1
X-Mimecast-MFC-AGG-ID: IFK_5DHCPF--xvE7P0pCcg_1769818775
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 79B1118005AE
	for <blinux-list@gapps.redhat.com>; Sat, 31 Jan 2026 00:19:35 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 5F7FC3001DBA; Sat, 31 Jan 2026 00:19:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5C8FB3000218
	for <blinux-list@redhat.com>; Sat, 31 Jan 2026 00:19:35 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D648A1956048
	for <blinux-list@redhat.com>; Sat, 31 Jan 2026 00:19:34 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1769818774;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=s3xVNrawdKwJ6TLfIq/vjqxDu8PAyy1ew6x8ms0k9f8=;
	b=V+Nha1ryTA3DOfhzt3aIvi/w0VZ9MNC03mhh6goKRtMlrny1MQAfxdJRJhuuu9fhkEA//d
	P7vmR0jtF8O6d5WY8+5AB8aiaTEFhu7R+7YhXny/Mrcusgy91SR9trdHSpbrwi8Xz1r4tu
	fJEfiLmVa4XD+Rf31j4ojYYtCmbcHH63z860ZT7jjOwlxIPoROlDV/rK1Z2dpbgc47Y6FM
	sdTmd8RKcdWFTceQhO2sGdPKhkPRtx5FPnlXNmsB6pNi7HuvGqfphJ3jlMLmlefNzlBA1u
	PXHBNcOlR3y68qRKpIbt62ufISo6k8wtop92HDOSSTZB8VkUQiAc5U1tz6dhEA==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1769818774; a=rsa-sha256;
	cv=none;
	b=W/rrK8OHxnmgVMsf8HNy8vfDrBONx53FiLIPpllN45FOMaZn1U1yOjOGRwXu0POX1P8SM0
	tn8BcQQXlHoe0pfE8SLtW66eaYesW4/E+c23szgNs3zO7CxY0QnLHOi6pt7RQUJeqJFqFL
	6X1zbxGTWZHRledW6gGR05lJE1N4XZ0AS7Q30VW0vtiNiGV3sgmoQVUhig5hH5xItQtoOB
	RQvkqyh/WOeLKmRyLlrEVljo3n3Ypvoq0elvI0JgDge35BrjplxEdyWIUfq/oBLTvLxKr0
	d9vbPzuC9wrFRgr1EtqLbjifZkwFdzd/DGjDKOEzRYnsyrB+qywrrfJNWNMNYg==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=panix.com header.s=panix header.b=s25OHIDY;
	dmarc=pass (policy=none) header.from=panix.com;
	spf=pass (relay.mimecast.com: domain of salt@panix.com designates 166.84.1.75 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from l2mail1.panix.com (l2mail1.panix.com [166.84.1.75]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-249-yGvMm_82PxesuIIjnqvwbg-1; Fri,
 30 Jan 2026 19:19:32 -0500
X-MC-Unique: yGvMm_82PxesuIIjnqvwbg-1
X-Mimecast-MFC-AGG-ID: yGvMm_82PxesuIIjnqvwbg_1769818772
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (1024 bits) server-digest SHA256)
	(No client certificate requested)
	by l2mail1.panix.com (Postfix) with ESMTPS id 4f2tQt4kNlzDQ3
	for <blinux-list@redhat.com>; Fri, 30 Jan 2026 19:04:22 -0500 (EST)
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4f2tQt0pxqz48QG
	for <blinux-list@redhat.com>; Fri, 30 Jan 2026 19:04:22 -0500 (EST)
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4f2tQt0TPxz1QXN; Fri, 30 Jan 2026 19:04:22 -0500 (EST)
Date: Fri, 30 Jan 2026 19:04:22 -0500
From: Rudy Vener <salt@panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: customizing word pronunciation in espeak-ng or speakup
Message-ID: <aX1HBkvkMJa48g7k@panix.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: gg04IO1D6aCd1XG-ZmEIqP-lmJMVpzsl6mEdscoLVgE_1769818772
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Original-Sender: salt@panix.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@panix.com header.s=panix header.b=s25OHIDY;       arc=pass (i=1
 spf=pass spfdomain=panix.com dkim=pass dkdomain=panix.com dmarc=pass
 fromdomain=panix.com);       spf=pass (google.com: domain of salt@panix.com
 designates 166.84.1.75 as permitted sender) smtp.mailfrom=salt@panix.com
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.61 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=3];
	R_SPF_ALLOW(-0.20)[+ip6:2607:f8b0:4000::/36];
	MAILLIST(-0.20)[googlegroups];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=google];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[panix.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[blinux-list];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:2607:f8b0::/32, country:US];
	RCPT_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rudyvener.com:url,panix.com:mid];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[salt@panix.com,blinux-list@redhat.com];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[bncBDGI3AUYYYCBBGUV6XFQMGQEV4ARRBY];
	TO_DN_ALL(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[redhat.com:+]
X-Rspamd-Queue-Id: 1BD5ABF9C7
X-Rspamd-Action: no action

Is there a simple, easy to follow step by step to do this with espeak-ng, or possibly from speakup?
I know speakup can do it with individual characters. But there are
many words, such as proper names, which it constantly mispronounces.

I find plenty of documentation online which discusses global changes to adjust for
gender or foreign languages, but not specific word pronunciation.

-- 
Rudy Vener

Beast Hunt Vol 1 now available: https://www.amazon.com/dp/B0DPN1QGGJ
Latest Limerick - Scott Adams' Sage Advice https://substack.com/@LimerickDude
Website: http://www.rudyvener.com

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

